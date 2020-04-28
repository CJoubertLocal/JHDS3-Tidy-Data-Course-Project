---
title: "README.md"
output: html_notebook
---

The code starts by downloading the data from the Url provided into a file called 'SmartPhoneData' within the working directory.
It then creates an object sotring the date of when the file was downloaded.

The zip file downloaded is then stored into an object.
This is then unziped to allow easy access to the text files within the zip files.

The code then reads the texts files for:
    Subject test
    Subject train 
    Activity labels
    Features
    Test X data
    Test Y data
    Train X data
    Train Y data
  
  and stores them in separate objects for later reference.
  
The variable names found within the features text file are then bound to the test_X and train_X data files.

The test_Y and test_X files are cbound together into a single table.
The train_Y and train_X files are cbound together into a single table.

The variable names for columns 1 and 2 are changed to 'participant id' and 'activity' respectively.

The dataframes with the test and train data are then bound together into a single frame with rbind.

Using grep(), the code then finds the positions of the columns containing the character strings 'mean' and 'std'.
These are then stored in their own objects.
These objects are then concatenated into a single object called columnSelect.
Now columnSelect can be used as an index for the positions of the columns containing the terms 'mean' and 'std' along with column numbers 1 and 2 for participant id and activity respectively.
The sub-setted data is then stored in filteredData.

Using gsub(), the numbers in activity are replaced with their associated terms found in activity_labels.txt.

The column names are then cleaned up with sub() and gsub().
First, the column names have spaces inserted where a lowercase letter is followed by an upper case letter,
Second, the string "std" is replaced with "standard deviation",
Third, the first instance of "t" in columns 3 to 42 is replaced with "test" as per features_info.txt,
Forth, the first instance of "f" in columns 43 to 81 is replaced with "fourier" as the features_info.txt,
Fifth, the "()" are replaced with "" to remove them,
Sixth, "Acc" is replaced with "accelerometer",
Seventh, "Gyro" is replaced with "gyrometer",
Eighth, "-" is replaced with " ",
Ninth, a few cases of "body body" were found and replaced with a single "body",
Tenth, all column names are converted to lower case.

This data with corrected labels in activity and easier to read column names is then stored in finalData for later use.

For the average of each activity and by participant, the data from finalData is piped into a group_by() function, allowing us to group the data first by activity and then participant id,
That data is then piped through to a summarise_all() function with the function mean() inserted to find the mean of each grouped case,
It is then piped through an ungroup() function to turn it back into a tibble for later use.