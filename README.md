# UCI HAR Dataset Summary
The three other files in the repository are as follows:
1. codebook.md - contains an overview of the data, the transformations of the data made to produce "summary.txt", and a list and description of variables.
2. summary.txt - the cleaned dataset containing the averages for each subject and each activity in space-separated format.
3. run_analysis.R - The R script used to produce "summary.txt". Assuming the downloaded "UCI HAR Dataset" folder is the working directory, the script reads in the necessary data from the different files contained in the directory. Then, the script performs the transformations described in codebook.md, and produces summary.txt.    
