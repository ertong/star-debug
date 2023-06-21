#CI_COMMIT_TAG="3.0b1"

if [ -n "$CI_COMMIT_TAG" ]
then
	NAME=$(echo $CI_COMMIT_TAG | cut -db -f1)
	NUM=$(echo $CI_COMMIT_TAG | cut -db -f2)
	NAME=$NAME.$NUM

  if [[ "$OSTYPE" == "darwin"* ]]; then
    NAME=${NAME}i
  elif [[ "$OSTYPE" == "msys" ]]; then
    NAME=${NAME}w
  else
    NAME=${NAME}a
  fi
else
	if [[ "$OSTYPE" == "darwin"* ]]; then
		PLATFORM=ios
	elif [[ "$OSTYPE" == "msys" ]]; then
    PLATFORM=win
  else
		PLATFORM=droid
	fi

	NAME="2.$(date '+%y%m%d').$(git rev-parse --short=7 HEAD).$PLATFORM"
	NUM=1
fi

BUILD_OPTS="--build-name=$NAME --build-number=$NUM"
echo Build options from tag: $BUILD_OPTS

rm -rf env.ps1
if [[ "$OSTYPE" == "msys" ]]; then
	echo "\$NAME='$NAME'" > env.ps1
	echo "\$NUM='$NUM'" >> env.ps1
	echo "\$BUILD_OPTS='$BUILD_OPTS'" >> env.ps1
fi
