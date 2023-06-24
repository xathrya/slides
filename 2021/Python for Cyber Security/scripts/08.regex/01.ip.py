import re

with open("bind.log", "r") as f:
    data = f.read()

# get IP address by specifying octets
r = r"(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
l = re.findall(r, data)
print(l)

# get IP address by capturing characters between boundaries
r = r"client (.*?)#"
l = re.findall(r, data)
print(l) 