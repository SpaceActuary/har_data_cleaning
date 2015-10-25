README.md
========================================================

This git repository has three files:
  1. README.md - this file
  2. run_analysis.r - an R script used to clean and "[tidy](http://vita.had.co.nz/papers/tidy-data.pdf)" [1] raw human activity data
  3. CodeBook.md - a markdown document containing descriptions of the input, transformations, and output data referred to in run_analysis.r

Before running "run_analysis.R", you'll need:
  - a working installation of R
  - installed packages:
    - dplyr, version >= 0.2 (tested using v0.4.3)
  - a copy of the raw human activity data collected by Anguita et al. [2]
    - This can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
  
To set up your R environment before running the script, make sure that both the run_analysis.R script and the raw data (in a sub-directory named "UCI HAR Dataset") are both in your working directory. For example:

    ./ (working directory)
        run_analysis.R
        UCI HAR Dataset/
            test/
            train/
            activity_labels.txt
            ...

Finally, run the R script, which will create two datasets in the working directory:
  1. har_tidy.txt - the "tidy" dataset, with mean and std. deviations of measurements, along with identifying information about each set of measurements.
  2. har_summary.txt - a second "tidy" dataset, this one containing the average measurements by subject and activity.

For more information on the contents of these datasets, see the included CodeBook.md.

#### Citations:
[1] Wickham, H. Tidy Data. Retrieved October 25, 2015, from http://vita.had.co.nz/papers/tidy-data.pdf

[2] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.