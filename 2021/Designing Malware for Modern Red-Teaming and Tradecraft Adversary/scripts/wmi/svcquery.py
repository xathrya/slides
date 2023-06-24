import wmi 

conn = wmi.WMI()

# result in list
svcs = conn.Win32_Service(State="Running")