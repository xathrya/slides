import requests

url = "http://127.0.0.1:8000"
headers = {}
cookies = {}

# user agent
headers["User-Agent"] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:87.0) Gecko/20100101 Firefox/87.0"
requests.get(url, headers=headers)

# cookies
cookies["isadmin"] = "true" 
cookies["session_id"] = "kaldkfhoad7f9h13kh134868"
requests.get(url, cookies=cookies)