import requests 
from bs4 import BeautifulSoup as bs

url = "http://127.0.0.1:8000/target.html"

# [1] get the content 
r = requests.get(url)

# [2] represent as HTML
s = bs(r.content, "html.parser")

# [3] find table
tbl = s.find(name="table", attrs={"id":"tableID"})

# [4] list all entries
entries = [[td.text for td in row.find_all("td")] for row in tbl.tbody.find_all("tr")]