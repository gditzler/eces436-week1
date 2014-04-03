# Lab Assignment 

The data sets are saved in `arff` files and can be found in the `assignment/data/` directory. Complete the items below for the week 1  lab assignment. Note, that you do not need to use Weka at the command line for this assignment. Using the GUI will be sufficient.

## Pattern Recognition in Weka

* Evaluate a naive Bayes classifier on the `diabetes.arff` data set using 15-fold cross validation. Set the option to use a kernel density estmator (see the `useKernelEstimator` option). Report the classification error and the ROC curve for the `tested_positive` class. What is the auROC?
* Evaluate AdaBoost.M1 on the same data set. Use `J48` as the base classifier and run AdaBoost for 50 iterations using resampling. Report the classification error and the ROC curve for the `tested_positive` class. What is the auROC?
* Repeat for the `diabetes.arff` data set. However, rather than using a naive Bayes in Part 1, choose a different classifier. 
* Now perform the same comparision using Weka's experimentor.  

## Classification Tools in Matlab

* Run 5-fold cross validation on Fisher's Iris and the ionoshpere data set. 
* Helpful functions: `NaiveBayes.fit`, `cvpartition`, `predict`, `load`.
