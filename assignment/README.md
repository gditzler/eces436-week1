# Lab Assignment 

The data sets are saved in `arff` files and can be found in the `assignment/data/` directory. Complete the items below for the week 1  lab assignment. Note, that you do not need to use Weka at the command line for this assignment. Using the GUI will be sufficient.

## Pattern Recognition in Weka

* Evaluate a naive Bayes classifier on the `diabetes.arff` data set using 15-fold cross validation. Set the option to use a kernel density estimator (see the `useKernelEstimator` option). Report the classification error and the ROC curve for the `tested_positive` class. What is the auROC?
* Evaluate AdaBoost.M1 on the same data set. Use `J48` as the base classifier and run AdaBoost for 50 iterations using resampling. Report the classification error and the ROC curve for the `tested_positive` class. What is the auROC?
* Repeat for the `diabetes.arff` data set. However, rather than using a naive Bayes in Part 1, choose a different classifier. 
* Hint: Perform the same comparison using Weka's experimenter.  

## Classification Tools in Matlab

* Run 5-fold cross validation on Fisher's Iris and the ionosphere data set. Evaluate a naive Bayes classifier and report the error and auROC on the hold out data set. Furthermore, report the ROC curve from one of the folds. These data sets are included with a Matlab installation. 
* Helpful functions: `NaiveBayes.fit`, `cvpartition`, `predict`, `load`.
* Starter Code: 
```matlab 
  % clean up the work space
  clc;
  clear; 
  close all;

  % load the data; X -> data; Y -> labels
  load ionoshpere;
  [n_samples,n_features] = size(X);

  % call cvpartion here
  
  % run CV
  error = zeros(1,5);
  for k = 1:5
    % use the cv partition object to split the training/testing data

    % train the naive bayes classifier

    % test the naive bayes classifier

    % measure the error (% of incorrect predictions on the test data)
    
    % compute the area under the ROC curve
  end
  disp(mean(error));

  % plot the ROC curve from the last fold (do not average ROC curves)
```

Publish your Matlab script with your name, comments, code, and figures. Please Publish as a pdf file. 
