# file operation in UTF-8
f = open("filename.txt", "w")
f.write("Satria Ady Pradana")
f.close()

f = open("filename.txt", "r")
s = f.read()
f.close()
print(s)

# file operation in binary
f = open("filename.bin", "wb")
f.write("Satria Ady Pradana")
f.close()

f = open("filename.bin", "rb")
s = f.read()
f.close()
print(s)


# using with
with open("filename.txt", "r") as f:
    s = f.read()
    print(s)


# read line by line
## [1]
f = open("/usr/share/john/password.lst", "r")
for line in f:
    print(line)
f.close()

## [2]
with open("/usr/share/john/password.lst", "r") as f:
    for line in f:
        print(line)