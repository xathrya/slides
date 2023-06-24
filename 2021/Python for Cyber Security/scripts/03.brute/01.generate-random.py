import random 
import string 
import itertools

# generate list of random words of 3 characters
alphabet = string.ascii_letters + string.digits

## naive approach
result = []
for p1 in alphabet:
    for p2 in alphabet:
        for p3 in alphabet:
            result.append(p1 + p2 + p3)
print(result[:30])

## using generator
result = ["".join(w) for w in itertools.product(alphabet, repeat=3)]