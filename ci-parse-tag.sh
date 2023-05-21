#CI_COMMIT_TAG="3.0b1"

if [ -n "$CI_COMMIT_TAG" ]
then
	NAME=$(echo $CI_COMMIT_TAG | cut -db -f1)
	NUM=$(echo $CI_COMMIT_TAG | cut -db -f2)
	NAME=$NAME.$NUM
	
	if [[ "$OSTYPE" == "darwin"* ]]; then
		NAME=${NAME}i
	else
		NAME=${NAME}a
	fi
else
	if [[ "$OSTYPE" == "darwin"* ]]; then
		PLATFORM=ios
	else
		PLATFORM=droid
	fi

	NAME="2.$(date '+%y%m%d').$(git rev-parse --short=7 HEAD).$PLATFORM"
	NUM=1
fi

BUILD_OPTS="--build-name=$NAME --build-number=$NUM"
echo Build options from tag: $BUILD_OPTS

