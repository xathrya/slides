import socket

HOST = "127.0.0.1"
PORT = 13510

# [1] create socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# [2] connect to server
s.connect((HOST,PORT))

# [3] send data
s.send(b"Hello World!")

# [4] receive data
data = s.recv(1024)
print(data)