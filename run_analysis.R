library(dplyr)

# Download the file
Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(Url, destfile = "SmartPhoneData")

# Save the date of when the file was downloaded
dateDownload <- date()
dateDownload

# Unzip the file
files.temp <- "SmartPhoneData"
unzip(files.temp)
list.files("UCI HAR Dataset")


# Read files and store in variables
# Read the files for:
#   Subject test
#   Subject train 
#   Activity labels
#   Features
#   Test X data
#   Test Y data
#   Train X data
#   Train Y data


subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

test_X <- read.table("UCI HAR Dataset/test/X_test.txt")
test_Y <- read.table("UCI HAR Dataset/test/Y_test.txt")

train_X <- read.table("UCI HAR Dataset/train/X_train.txt")
train_Y <- read.table("UCI HAR Dataset/train/Y_train.txt")



# Bind the variable names from the features file to the test_x file
# and the train_x file.
colnames(test_X) <- features[, 2]
colnames(train_X) <- features[, 2]


# Bind the X and Y data for test and train
# cbind the test X and Y data sets
# Rename the first two columns to 'participant id' and 'activity'
test_XY <- cbind(subject_test, test_Y, test_X)
colnames(test_XY)[1] <- "participant id"
colnames(test_XY)[2] <- "activity"


train_XY <- cbind(subject_train, train_Y, train_X)
colnames(train_XY)[1] <- "participant id"
colnames(train_XY)[2] <- "activity"


# Row bind the test and train datasets
fullData <- rbind(test_XY, train_XY)


# Select for the variable names containing 'mean' and 'std' as per
# the features_info.txt file

columnMeanSelect <- grep("mean", colnames(fullData))
columnMeanSelect
columnStdSelect <- grep("std", colnames(fullData))
columnStdSelect


columnSelect <- c(columnMeanSelect, columnStdSelect)
columnSelect <- sort(columnSelect)
columnSelect


# Subset for the activity, participant, and the mean and std columns
filteredData <- fullData[, c(1, 2, columnSelect)]


# Rename the activity numbers with names, according to activity_labels.txt
filteredData$activity <- gsub("1", "WALKING", filteredData$activity)
filteredData$activity <- gsub("2", "WALKING_UPSTAIRS", filteredData$activity)
filteredData$activity <- gsub("3", "WALKING_DOWNSTAIRS", filteredData$activity)
filteredData$activity <- gsub("4", "SITTING", filteredData$activity)
filteredData$activity <- gsub("5", "STANDING", filteredData$activity)
filteredData$activity <- gsub("6", "LAYING", filteredData$activity)


# Rename the column names to something more readable based on README.txt
# and features_info.txt

colnames(filteredData)
# Create a space between words based on the switch between lower case and upper case
# letters

# substitute "std" for "standard deviation"
# substitute the first instance of "t" for "test" for the columns [3:42]

# "f" is used to denote "Fast Fourier Transform". Substitute with "fourier"
# substitute the first instance of "f" for "Fourier" for the columns [43:81]

# substitute "()" for ""
# substitute "Acc" for "accelerometer"
# substitute "Gyro" for "gyrometer"
# substitute "-" for " "

# All variable names should be lowercase

 
colnames(filteredData) <- gsub("([a-z])([A-Z])", "\\1 \\2", colnames(filteredData))
colnames(filteredData) <- sub("std", "standard deviation", colnames(filteredData))
colnames(filteredData)[3:42] <- sub("t", "time", colnames(filteredData)[3:42])
colnames(filteredData)[43:81] <- sub("f", "Fourier", colnames(filteredData)[43:81])
colnames(filteredData) <- sub("\\()", "", colnames(filteredData))
colnames(filteredData) <- sub("Acc", "accelerometer", colnames(filteredData))
colnames(filteredData) <- sub("Gyro", "gyrometer", colnames(filteredData))
colnames(filteredData) <- gsub("-", " ", colnames(filteredData))
colnames(filteredData) <- gsub("Body Body", "Body", colnames(filteredData))
colnames(filteredData) <- tolower(colnames(filteredData))
colnames(filteredData)


# Put the final dataset into a new object

finalData <- filteredData


# Create a second dataset with the average of each variable and each
# subject. The subject would be the Participant, according to ReadMe.txt
# Group the data by participants, and then by activity
# Find the mean of each column
# Ungroup

averageFinalData <- finalData %>%
                    group_by(activity, `participant id`) %>%
                    summarise_each(funs(mean)) %>%
                    ungroup()

averageFinalData

# Rename variables to include 'average'
colnames(averageFinalData)[3:81] <- paste("average", colnames(averageFinalData)[3:81])
colnames(averageFinalData)
print(averageFinalData[1:50, 1:4])
