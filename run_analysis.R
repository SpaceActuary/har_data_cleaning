library(dplyr)

## read in the metadata (data describing the data)
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
colnames(activity_labels) <- c("ActivityCode", "Activity")
activity_labels$Activity <- factor(activity_labels$Activity,
                                   levels = activity_labels$Activity)

## read in the raw training datasets
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")

## read in the raw test datasets
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")

## merge the columns of the 2 datasets together
train <- cbind(subject_train,
               Y_train,
               X_train)

train$Split <- "train"

test <- cbind(subject_test,
              Y_test,
              X_test)

test$Split <- "test"

## 'stack' the training and test datasets
full <- rbind(train, test)

## rename the columns in the datasets
colnames(full) <- c("Subject", 
                    "ActivityCode", 
                    as.character(features[,2]), 
                    "Split")

## filter out the non-mean and non-std columns from the X datasets
selected_cols <- grepl("Subject|Activity|Split|(mean|std)\\(\\)",
                       colnames(full))

full <- full[, selected_cols]

## label the activities meaningfully
full <- merge(full, activity_labels)

## re-order the columns so the "activity" (label) variable is first
full <- full[,c(ncol(full), 1:(ncol(full)-1))]

## drop the "activity_code" variable since it means the same thing as
## the "activity" variable (and therefore keeping it wouldn't be tidy)
full$ActivityCode <- NULL

## rename the measurement variables to something a little more human readable
new_colnames <- colnames(full)
new_colnames <- gsub("mean\\(\\)", "Mean", new_colnames)
new_colnames <- gsub("std\\(\\)", "StdDev", new_colnames)
new_colnames <- gsub("-", "", new_colnames)
new_colnames <- gsub("BodyBody", "Body", new_colnames) # looks like a typo
colnames(full) <- new_colnames

write.table(full, "har_tidy.txt", row.name=FALSE)

summary <- full %>%
  group_by(Activity, Subject) %>%
  summarise_each(funs(mean), -matches("Split"))

write.table(summary, "har_summary.txt", row.name=FALSE)


