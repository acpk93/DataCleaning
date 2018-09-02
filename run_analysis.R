### READ IN NECESSARY DATA 
xtest <- read.table("test/X_test.txt")
ytest <- read.table("test/Y_test.txt")
subtest <- read.table("test/subject_test.txt")
xtrain <- read.table("train/X_train.txt")
ytrain <- read.table("train/Y_train.txt")
subtrain <- read.table("train/subject_train.txt")
features <- (read.table("features.txt"))

### MERGE AND CLEAN DATA

# Find which columns of xtest and xtrain are relevant
# i.e., find which features correspond to mean() and std()
goodcol <- grepl("mean\\(|std", features[ , 2] )

# create separate data frames for test and train
testdata <- cbind(subtest, ytest, xtest[, goodcol])
traindata <- cbind(subtrain, ytrain, xtrain[, goodcol])

# merge data 
fulldata <- rbind(testdata, traindata)
colnames(fulldata) <- c("Subject", "Activity", as.character(features[goodcol, 2]))

# sort data by subject, then activity.
fulldata <- fulldata[order(fulldata[,1], fulldata[,2]), ]

# name activities
actvec <- c(  "WALKING"
              , "WALKING UPSTAIRS"
              , "WALKING DOWNSTAIRS"
              , "SITTING"
              , "STANDING"
              , "LAYING"
)
for( i in 1:nrow(fulldata) ){
        fulldata[ i , 2 ] <- actvec[as.numeric(fulldata[ i , 2 ])]
}

### CREATE SUMMARY DATASET

summary <- data.frame()

# calculate column means for each subject (i) and activity (j)
for(i in 1:30){
        for(j in 1:6){
                insdata <- fulldata[fulldata$Subject == i & fulldata$Activity == actvec[j], ]
                averages <- colMeans(insdata[,3:ncol(insdata)])
                insert <- c(i, j, averages)
                summary <- rbind(summary, insert)
        }
}

# name activities and add column names.
for( i in 1:nrow(summary) ) {
        summary[ i , 2 ] <- actvec[as.numeric(summary[ i , 2 ])]
}
colnames(summary) <- colnames(fulldata)

### OUTPUT SUMMARY DATA AS .TXT TABLE

write.table(summary, "summary.txt", row.names = FALSE)
