import urllib.request

url = "http://127.0.0.1:8000/file.txt"
data = urllib.request.urlopen(url).read()

with open("file.txt", "wb") as f:
    f.write(data)