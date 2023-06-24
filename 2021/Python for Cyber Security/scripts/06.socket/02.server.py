import socket

HOST = "127.0.0.1"
PORT = 13510

# [1] create socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# [2] bind socket to address and port
s.bind((HOST,PORT))
s.listen()
conn, addr = s.accept()
with conn:
    print(">> got connection from {} <<".format(addr))
    while True:
        data = conn.recv(1024)
        if not data:
            break 
        conn.sendall(data)