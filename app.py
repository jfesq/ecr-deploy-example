import os
 
# printing environment variables
print("HOWDY")
for k, v in os.environ.items():
    print(f'{k}={v}')


# read in secret from file:
print("Scour")
print("Secret:")
    
secretFile = open("/run/secrets/github_token.txt", "r")
contents = secretFile.read
print(contents)