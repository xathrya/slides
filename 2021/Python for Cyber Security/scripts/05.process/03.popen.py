import subprocess

command = ["ls", "-lha"]

# store result as variable
result = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
output,error = result.communicate()
print(output)

# redirect result to file
with open("stdout.txt", "wb") as f:
    result = subprocess.Popen(command, stdout=f, stderr=subprocess.PIPE)
    output,error = result.communicate()


# using single string as command
command = "ls -lha"
result = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE)