import requests 

url = "https://httpbin.org/post"

headers = { "accept" : "application/json" }
body    = { "data" : "Archonlabs", }

proxies = {
    "http"  : "127.0.0.1:8080",
    "https" : "127.0.0.1:8080",
}

r = requests.post(url, headers=headers, json=body, proxies=proxies, verify=False)

print(r.text)