import os
f=open("env_var.txt","a")
for item, value in os.environ.items():
    f.write('{}={}'.format(item, value))
f.close()
if os.stat("env_var.txt").st_size == 0:
    print("Hai")
else:
    print("bye")
num_lines=0    
with open("env_var.txt", 'r') as f:
    for line in f:
        num_lines += 1
print("Number of lines:")
print(num_lines)
