import os
with open("env_var.txt", 'w') as f:
    for item, value in os.environ.items():
        var1=item +"="+ value
        f.write("%s\n" % var1)
