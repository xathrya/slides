name_s = "satria ady pradana"
name_b = b"satria ady pradana"

print(type(name_s), name_s)
print(type(name_b), name_b)

# encode/decode 
print(name_s.encode())
print(name_b.decode())

# access substring
print(name_s[:6])

# find substring
print(name_s.find("Ady"))

# split string by delimiter
l = name_s.split()
print(l)

# count the occurrence of substring
c = name_s.count("ad")

# replicate string
s = "XATH"
r = s * 3
print(r)

# conversion
i = "13510"
print(type(i), i)
ic = int(i)
print(type(ic), ic)

r = "3.14"
print(type(r), r)
rc = float(r)
print(type(rc), rc)

# iterate string (str/bytes)
# item assignment is not possible (immutable)
for c in name_s:
    print(c)

for idx in range(len(name_s)):
    print(name_s[idx])

# example: simple XOR
t = [ c ^ 0x3F for c in name_b ]
print(t)
print(bytes(t))


# buffer
## declare buffer by size
buffer = bytearray(20)
buffer[:6] = b"Satria"
print(buffer)

## declare buffer from bytes
buffer = bytearray(b"Satria Ady Pradana")
for idx in range(len(buffer)):
    buffer[idx] = buffer[idx] ^ 0x3F
print(buffer)