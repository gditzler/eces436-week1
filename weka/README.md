# Weka 

This section covers an introduction to using [Weka](http://www.cs.waikato.ac.nz/ml/index.html) from the commandline. The Weka GUI is convenient, but many times it is easier to work in the shell than with a GUI. You will need to obtain the Weka jar file, which can be downloaded [here](http://www.cs.waikato.ac.nz/ml/weka/downloading.html). The scripts provided in this section was built on a Mac; however, they should run on Linux as well. You will need to do some extra work if you want execute these commands in a Windows environment.

# Before getting started

Download the executable [Weka jar file](http://www.cs.waikato.ac.nz/ml/weka/downloading.html) and place it into the `weka/` path of this repository. The code in this repo was tested with Weka 3.  

# File info
* `README.md` - You're reading it!
* `simple-adaboost.sh` - Basic shell script to implement [Adaboost.M1](http://en.wikipedia.org/wiki/AdaBoost) on a breast cancer diagnosis data set. The output is `summary-adaboost.txt`.
* `simple-tree.sh` - Basic shell script to implement the [J48](http://weka.sourceforge.net/doc.dev/weka/classifiers/trees/J48.html) decision tree on the Fisher Iris data set. J48 is a Java implementation of [C4.5](http://en.wikipedia.org/wiki/C4.5_algorithm). The output is `summary-j48.txt`.
* `summary-adaboost.txt` - Adaboost.M1 results
* `summary-j48.txt` - J48 results
* `weka.jar` - You need to add this file! 

# some useful links

to be added



