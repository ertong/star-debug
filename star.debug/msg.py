#!/usr/bin/python3

import click
import yaml
import json
import os
import re
import requests
import random


@click.group()
def cli():
    pass


def flatten_do(res, prefix, data):
    if not isinstance(data, dict):
        return
    for k in data:
        v = data[k]
        if isinstance(v, dict):
            flatten_do(res, prefix + k + ".", v)
        else:
            res[prefix + k] = v


def flatten(data):
    res = {}
    flatten_do(res, "", data)
    return res


def deflatten(data):
    res = {}
    for k in data:
        v = data[k]
        r = res
        ks = k.split(".")
        for kk in ks[0:len(ks) - 1]:
            if kk not in r:
                r[kk] = {}
            r = r[kk]
        r[ks[len(ks) - 1]] = v
    return res


def load(msg_dir):
    files = [os.path.join(msg_dir, f) for f in os.listdir(msg_dir)]
    files = [f for f in files if os.path.isfile(f)]

    langs = {}
    for f in files:
        name = os.path.basename(f)
        m = re.match("messages(_(.*))?\\.i18n\\.yaml", name)
        if m:
            print(f)
            lang = m.group(2)
            if not lang:
                lang = "en"
            langs[lang] = {
                "file": f
            }

            with open(f, "r", encoding="utf-8") as f:
                lines = f.readlines()

            for i in range(0, len(lines)):
                if lines[i].endswith(" # autotranslated\n"):
                    lines[i] = lines[i]\
                        .replace("' # autotranslated\n", "--AUTO--'\n")\
                        .replace("\" # autotranslated\n", "--AUTO--\"\n")\
                        .replace(" # autotranslated\n", "--AUTO--\n")

            # print("".join(lines))

            import io
            raw = yaml.load(io.StringIO("".join(lines)), Loader=yaml.Loader)
            langs[lang]['data'] = flatten(raw)

    return langs


def save(msg_dir, data):
    for lang in data:
        if lang == "en":
            continue

        row = data[lang]
        print("Save file ", row['file'])

        with open(row['file'], "w", encoding="utf-8") as f:
            yaml.dump(deflatten(row['data']), f, Dumper=yaml.Dumper, allow_unicode=True, sort_keys=False)
        with open(row['file'], "r", encoding="utf-8") as f:
            lines = f.readlines()
        with open(row['file'], "w", encoding="utf-8") as f:
            for line in lines:
                if "--TRANSLATE ME--" in line:
                    line = "#" + line.replace("--TRANSLATE ME--", "")
                if "--AUTO--" in line:
                    line = line.replace("--AUTO--", "").replace("\n", " # autotranslated\n")
                f.write(line)


tokens = [

        'trnsl.1.1.20170116T185731Z.c3198847277922be.542d1951842cbfe2201ce3b3cfc26caaf149ef29',
        'trnsl.1.1.20170116T185916Z.22ba11255249e841.363a9fa9c55f849f4329d5e61055aaf1729ccf74',
        'trnsl.1.1.20170116T191718Z.24174de7980f9d3b.ee8cc589096402b2320d3ad8da9b425b70d9b385',
        'trnsl.1.1.20170116T191826Z.3a91e23131a56274.a7e62c481536d4f99e9cbc71bc060ef143c23f53',
        'trnsl.1.1.20170116T192025Z.cb956abe512d8db2.99987aacbf38e61b0730a2dbce0668a15de42f52',
        'trnsl.1.1.20170116T192145Z.1b298c9a910bdbe8.279855428ef0d76efacefe6b8543cc745a47376c',
		  ]


def translate(str, src, dest):
    # import logging
    # from http.client import HTTPConnection # py3
    # HTTPConnection.debuglevel = 1
    # logging.basicConfig()
    # logging.getLogger().setLevel(logging.DEBUG)
    # requests_log = logging.getLogger("requests.packages.urllib3")
    # requests_log.setLevel(logging.DEBUG)
    # requests_log.propagate = True

    str = str.strip()
    if not str:
        return str

    token = random.choice(tokens)
	
    print(token)

    r = requests.get("https://translate.yandex.net/api/v1.5/tr.json/translate", params={
        "key": token,
        "text": str,
        "format": "plain",
        "lang": f"{src}-{dest}",
    })

    if "text" not in json.loads(r.content):
        print (token, r.content)
    return json.loads(r.content)["text"][0]


def translate_mask(str, src, dest):
    args = re.findall("\\$[a-zA-Z_0-9]+", str)
    masked = str
    for pos in range(0, len(args)):
        masked = masked.replace(args[pos], f"---{pos}---")

    unmasked = translate(masked, src, dest)
    for pos in range(0, len(args)):
        unmasked = unmasked.replace(f"---{pos}---", args[pos])

    return unmasked



@cli.command()
@click.option('--auto', is_flag=True, help='Use yandex translate')
def sync(auto):
    dir = os.path.dirname(os.path.abspath(__file__))
    msg_dir = f"{dir}/lib/messages"

    data = load(msg_dir)

    all_keys = data['en']['data'].keys()
    # for lang in data:
    #     for k in data[lang]['data']:
    #         if k not in all_keys:
    #             all_keys.append(k)
    en = data['en']
    for lang in data:
        if lang == "en":
            continue

        row = data[lang]
        print("Process file ", row['file'])

        keys = set(row['data'].keys())
        T = {}
        for k in all_keys:
            # T[k] = en['data'][k]
            T[k] = ""
            if k in row['data']:
                T[k] = row['data'][k]
                if not T[k]:
                    T[k] = ""
                if T[k].startswith("*** "):
                    T[k] = T[k][4:]
            if not T[k]:
                if auto:
                    print(f"Translating {k}")
                    T[k] = "--AUTO--" + translate_mask(en['data'][k], "en", lang)
                else:
                    T[k] = "--TRANSLATE ME--" + en['data'][k]

            if k in keys:
                keys.remove(k)

        for k in keys:
            T[k] = row['data'][k]
            if not T[k]:
                T[k] = ""
            if not T[k].startswith("***"):
                T[k] = "*** " + T[k]

        row['data'] = T

    save(msg_dir, data)

    print("done")


# print(translate("Hello $name","en","uk"))
# print(translate_mask("Hello $name","en","uk"))

if __name__ == '__main__':
    cli()
    exit(0)
