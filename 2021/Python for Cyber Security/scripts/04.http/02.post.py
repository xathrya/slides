import requests

url = "http://127.0.0.1:8000"
body = {"username":"xathrya","password":"xathrya"}

# single request
r = requests.post(url, data=body)
print(r.content)

# session
sess = requests.Session()
r = sess.post(url, data=body)
print(r.content)