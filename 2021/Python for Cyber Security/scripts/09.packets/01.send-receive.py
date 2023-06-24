from scapy.all import *

# create packets
p = IP(dst="127.0.0.1")/"Hello World"

# send only
r = send(p)

# send and receive
r = sr1(p)