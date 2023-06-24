# hash with hashlib
import hashlib

## print supported algorithm
print(hashlib.algorithms_available)

## instantiate engine
m = hashlib.sha256()

## feed data to engine (bytes)
m.update(b"Satria Ady")
m.update(b"Pradana")

## get the digest
print(m.digest())

print(m.hexdigest())


# hash with pycrypto/pycryptodome
from Crypto.Hash import SHA256

## instantiate engine
m = SHA256.new()

## feed data to engine (bytes)
m.update(b"Satria Ady")
m.update(b"Pradana")

## get the digest
print(m.digest())

print(m.hexdigest())