import wmi 

conn = wmi.WMI(namespace=r"SecurityCenter2")

# result in list
avs = conn.query("SELECT * FROM AntiVirusProduct")