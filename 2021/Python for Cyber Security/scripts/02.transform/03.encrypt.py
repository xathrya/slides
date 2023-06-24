from Crypto.Cipher import AES 

def pad(s, block_size):
    pb = block_size - len(s) % block_size
    return s + (chr(pb) * pb).encode()

def unpad(s, block_size):
    return s[:-ord(s[len(s)-1:])]

# get cipher specific information
print("block size: {}".format(AES.block_size))
print("key size: {}".format(AES.key_size))

key = b"\x17U\r\xda'US8\x99c\x80\x97\x83s\x9f\xd3"
iv  = b";\xe0\xa8\x07&\xf63\xc9\x02\x97\r\x19/iDz"

data = b"Satria Ady Pradana"
print(len(data), data)

# encrypt with CBC mode
m = AES.new(key, AES.MODE_CBC, iv)
ct = m.encrypt(pad(data, m.block_size))
print(ct)

# decrypt with CBC mode
m = AES.new(key, AES.MODE_CBC, iv)
pt = unpad(m.decrypt(ct), m.block_size)
print(pt)