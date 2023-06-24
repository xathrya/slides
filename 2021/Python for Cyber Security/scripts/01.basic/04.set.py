s = {1, 2, 2, 3, 3, 3, 4, 4, 4, 4}
print(s)

# length/size
print(len(s), s)

# add item to set
s.add(4)
s.add(5)

print(s)

# conversion from/to set
## list
l = list(s)
print(l)

l = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
s = set(l)
print(s)

## tuple
t = tuple(s)
print(t)

t = (1, 2, 2, 3, 3, 3, 4, 4, 4, 4)
s = set(t)
print(s)

# set operation
s = {1, 2, 3, 4, 5}
t = {2, 3, 5, 7, 11}

## difference
print(s.difference(t))
print(t.difference(s))

# intersection
print(s.intersection(t))
print(t.intersection(s))

# union
print(s.union(t))
print(t.union(s))