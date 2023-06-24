import time
import threading

def worker_one():
    print(">> Worker one [5s] <<")
    threading.Timer(5, worker_one).start()

def worker_two():
    print("!! Worker two [3s] !!")
    threading.Timer(3, worker_two).start()

worker_one()
worker_two()
print("resuming script")