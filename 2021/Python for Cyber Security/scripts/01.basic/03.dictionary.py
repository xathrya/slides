cookies = {"session_id": "1n34oy9alanlkdnafo6114", "isadmin":False}

# get/set item
k = "isadmin"

print(cookies[k])

cookies[k] = True 
print(cookies)

# add more item
k = "expire"
cookies[k] = 1000
print(cookies)

# iterate by keys
for key in cookies:
    print(cookies[key])

for key in cookies.keys():
    print(cookies[key])

# iterate all values
for val in cookies.values():
    print(val)

# iterate key-value pair
for key,val in cookies.items():
    print(key, val)

# delete by key
k = "expire"
del cookies[k]