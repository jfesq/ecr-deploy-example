import os
 
# printing environment variables
print("HOWDY")
for k, v in os.environ.items():
    print(f'{k}={v}')


# read in secret from file:
    
secretFile = open("/run/secrets/", "r")

print("Scour")
print("Secret:")
print(secretFile.read)