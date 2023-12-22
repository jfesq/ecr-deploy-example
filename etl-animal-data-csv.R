library(readr)
library(paws.storage)

# animal_data <- readr::read_csv('/usr/local/src/myscripts/input_files/animals.csv')
animal_data <- readr::read_csv('/usr/local/src/myscripts/input_files/animals.csv')
animal_data$height_in_feet <- round(animal_data$height / 12, 2)
# readr::write_csv(animal_data,  "/usr/local/src/myscripts/output_files/animals_in_feet.csv")
readr::write_csv(animal_data,  "/usr/local/src/myscripts/output_files/animals_in_feet.csv")
cat("Data saved to animals_in_feet.csv.\n")
print("Data saved to animals_in_feet.csv.\n")

print("ABC")
print("ABC")
print("ABC")
print("ABC")
print("DEF")
print("DEF")
print("DEF")

print("Secret:")
secretFile <- readr::read_file("/usr/local/src/myscripts/.Renviron")
print(secretFile)


# Specify active config from config.yml file such as qa, prod etc.
print(Sys.getenv('R_CONFIG_ACTIVE'))

print(Sys.getenv('SF_USERNAME'))
print(Sys.getenv('SF_PASSWORD'))
print(Sys.getenv('SF_SERVER'))
print(Sys.getenv('SF_ROLE'))

print(Sys.getenv('ORACLE_USERNAME'))
print(Sys.getenv('ORACLE_PASSWORD'))

print(Sys.getenv('GMAIL_API_KEY'))


# print("SETTING UP S3 CLIENT")
# s3 <- paws.storage::s3()

# print("UPLOADING TO S3 ON SAME VPC")
# # Upload file: S3 bucket on the same VPC
# s3$put_object(
#   Bucket = "airflow-ip",
#   Key = "requirements/animals_in_feet.csv",
#   Body = "/usr/local/src/myscripts/output_files/animals_in_feet.csv"
# )

# cat("Data uploaded to s3://airflow-ip/requirements/animals_in_feet.csv.\n")
# print("Data uploaded to s3://airflow-ip/requirements/animals_in_feet.csv.\n")

# print("DOWNLOAD FROM S3 ON SAME VPC")
# # Download file: S3 bucket on the same VPC
# object <- s3$get_object(
#   Bucket = "airflow-ip",
#   Key = "requirements/animals.csv"
# )
# #
# writeBin(object$Body, "output_files/downloaded_animals.csv")

# cat("Data downloaded from s3://airflow-ip/requirements/downloaded_animals.csv.\n")
# print("Data downloaded from s3://airflow-ip/requirements/downloaded_animals.csv.\n")
# file_contents <- read.csv("/usr/local/src/myscripts/output_files/downloaded_animals.csv")
# print(file_contents)


# print("UPLOADING TO S3 ON DIFFERENT VPC")
# # Upload file: S3 bucket on the same VPC
# s3$put_object(
#   Bucket = "aws-ia-mwaa-002148269935",
#   Key = "requirements/animals_in_feet.csv",
#   Body = "/usr/local/src/myscripts/output_files/animals_in_feet.csv"
# )

# cat("Data uploaded to s3://airflow-ip/requirements/animals_in_feet.csv.\n")
# print("Data uploaded to s3://airflow-ip/requirements/animals_in_feet.csv.\n")

# print("DOWNLOAD FROM S3 ON DIFFERENT VPC")
# # Download file: S3 bucket on the same VPC
# object <- s3$get_object(
#   Bucket = "aws-ia-mwaa-002148269935",
#   Key = "requirements/animals.csv"
# )
# #
# writeBin(object$Body, "output_files/downloaded_animals.csv")

# cat("Data downloaded from s3://airflow-ip/requirements/downloaded_animals.csv.\n")
# print("Data downloaded from s3://airflow-ip/requirements/downloaded_animals.csv.\n")
# file_contents <- read.csv("/usr/local/src/myscripts/output_files/downloaded_animals.csv")
# print(file_contents)