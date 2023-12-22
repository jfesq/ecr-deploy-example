import os
 
# printing environment variables
print("HOWDY")
for k, v in os.environ.items():
    print(f'{k}={v}')


# read in secret from file:

print("Secret:")
    
secretFile = open("/app/.Renviron", "r")
contents = secretFile.read()
print(contents)