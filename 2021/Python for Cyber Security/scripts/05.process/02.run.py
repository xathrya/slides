import subprocess 

command = ["ls", "-lha"]

# store result as variable
result = subprocess.run(command, stdout=subprocess.PIPE)
print(result.stdout)

# redirect output to file
with open("stdout.txt", "wb") as f:
    result = subprocess.run(command, stdout=f, stderr=subprocess.PIPE)


# using single string as command
command = "ls -lha"
result = subprocess.run(command, shell=True, stdout=subprocess.PIPE)