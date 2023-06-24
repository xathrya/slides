# encode/decode base64 with codecs
import codecs

s = b"Satria Ady Pradana"
t = codecs.encode(s, "base64")
print(t)

u = codecs.decode(t, "base64")
print(u)


# encode/decode base64 with base64
import base64 

s = b"Satria Ady Pradana"
t = base64.b64encode(s)
print(t)

u = base64.b64decode(t)
print(u)


# encode/decode hex
import binascii

key = b"\x17U\r\xda'US8\x99c\x80\x97\x83s\x9f\xd3"
print(key)

h = binascii.hexlify(key)
print(h)

u = binascii.unhexlify(h)
print(u)