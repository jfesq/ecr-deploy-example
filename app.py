import os
 
# printing environment variables
print("Hellooooo")
for k, v in os.environ.items():
    print(f'{k}={v}')


# read in secret from file:
    
secretFile = open("/run/secrets/", "r")

print("Secret:")
print(secretFile.read)