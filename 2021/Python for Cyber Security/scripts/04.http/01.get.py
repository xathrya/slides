import requests

url = "http://127.0.0.1:8000"

# single request
r = requests.get(url)
print(r.content)

# session
sess = requests.Session()
r = sess.get(url)
print(r.content)