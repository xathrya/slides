#cython: language_level=3

# Compile:
#   $ cython --embed -o malcode.c malcode.py
#   $ cl malcode.c /I C:\Python38\include /link C:\Python38\libs\python38.lib

print("Executing payload!")