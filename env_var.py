import os
f=open("env_var.txt","a")
for item, value in os.environ.items():
    f.write('{}={}'.format(item, value))
f.close()
if os.stat("env_var.txt").st_size == 0:
    print("Hai")
else:
    print("bye")
num_lines = sum(1 for line in open('env_var.txt'))
print(num_lines)
