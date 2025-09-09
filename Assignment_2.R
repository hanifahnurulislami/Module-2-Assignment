# Load package
if (!require(pander)) install.packages("pander", dependencies = TRUE)
library(pander)

# 1. Set working directory to the folder where the zip file is stored
setwd("~/Programming Python & R/Module 2 Assignment/Module 2 Assignment-Salary Function")

# 2. Unzip file
zip_file <- "Employee_Profile.zip"
unzip_folder <- "unzipped_data"
unzip(zip_file, exdir = unzip_folder)

# 3. List all CSV files from the unzip
files <- list.files(file.path(unzip_folder, "Employee_Profile"), full.names = TRUE)
print(files)

# 4. Read all CSV files and combine them
all_data <- do.call(rbind, lapply(files, read.csv))

# 5. Display data neatly in the console
cat("Data has been successfully combined. Neat preview:\n")
pander(head(all_data, 10))

# optional: open full data in a new RStudio tab
# note: this only works in RStudio
View(all_data)  # optional