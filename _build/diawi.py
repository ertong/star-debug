#!/usr/bin/python3 -u
import os
import json
import time
import requests
import sys


class Diawi:
    def __init__(self, token):
        self.token = token

    def diawi_upload_file(self, file_path):
        with open(file_path, 'rb') as f:
            r = requests.post("https://upload.diawi.com/", files={'file': f}, data={"token": self.token})
            return r.json()["job"]

    def diawi_check(self, job):
        r = requests.get(f"https://upload.diawi.com/status?token={self.token}&job={job}")
        return r.json()


ver = sys.argv[1]
diawi: Diawi = Diawi(sys.argv[2])
path = sys.argv[3]

print(f"Uploading file: {path}")
job = diawi.diawi_upload_file(path)
print(f"Diawi job: {job}")

for _ in range(0, 20):
    time.sleep(1)
    res = diawi.diawi_check(job)
    if res['status'] == 2000:
        link = res["link"]
        print(f"Link: {link}")
        break
    elif res['status'] == 4000:
        print(f"Error: {res}")
        exit(1)
        break
    else:
        print(f"Process: {res}")
    time.sleep(1)
else:
    print(f"Error: timeout")
    exit(1)

if link is not None and len(sys.argv) > 4:
    (token, chat_id) = sys.argv[4].split("/")

    text = f"New build {ver} at {link}"
    r = requests.get(f"https://api.telegram.org/{token}/sendMessage", params={
        'chat_id': chat_id,
        'text': text
    })
    if r.status_code != 200:
        print(f"Telegram error: {r.text}")
        exit(1)
