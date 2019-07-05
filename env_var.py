import os
with open("env_var.txt", 'w') as f:
    for item, value in os.environ.items():
        if item.startswith("collie_"):
            var1=item.replace("collie_","") +"="+ value
            f.write("%s\n" % var1)
