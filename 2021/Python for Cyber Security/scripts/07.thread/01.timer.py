import time
import threading

# interval in seconds
INTERVAL = 5

# the callback which will be executed periodically
def callback():
    # the payload
    print(">> executing payload <<")

    # scheduling next execution
    threading.Timer(INTERVAL, callback).start()

# initial call
callback()
print("resuming script")