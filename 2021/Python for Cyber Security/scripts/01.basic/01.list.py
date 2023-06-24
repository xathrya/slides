a = [22, 80, 110, 389, 443, 3306, 8080]
b = ["/admin", "/login", "/upload"]
c = ["Satria", 123, True]

# length/size
print(len(a), a)
print(len(b), b)
print(len(c), c)

# get individual element, index start from 0
print(a[0])

a[0] = 21
print(a[0])

# slicing, get elements
print(a[1:])
print(a[:6])
print(a[2:5])

a[2:5] = [114, 389, 443]
print(a)

a[2:5] = [110, 389]
print(a)

a[2:5] = [110, 389, 443]
print(a)

# add (append) new data on list
a.append(8081)
print(len(a), a)

# create new list by list comprehension
base = "https://target.id"
d = [base + ep for ep in b]
print(d)

