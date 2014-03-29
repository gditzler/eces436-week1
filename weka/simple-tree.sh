#!/usr/bash 

# Generate a J48 (i.e., C4.5) decision tree on a data set specified by the 
# dataset_fp variable
#
# By: Gregory Ditzler (gregory.ditzler@gmail.com)


# the weka gui limits the amount of memory that the program can use. we 
# can set this limit at the command line. change the memory variable to 
# increase/decrease the amount. 
dataset_fp=data/iris
memory=1024m

# the data set that was downloaded from the weka website had the labels 
# in order for each class. we need to randomize (i.e., permute) the 
# occurance of the observations in the arff file.
java -cp weka.jar weka.filters.unsupervised.instance.Randomize -S $seed \
  -i $dataset_fp.arff -o $dataset_fp-random.arff

# split the original arff file into a training and testing file. here
# we use a 80(train)/20(test)% split
java -cp weka.jar weka.filters.unsupervised.instance.RemovePercentage \
  -P 20 -i $dataset_fp-random.arff -o data/train.arff 
java -cp weka.jar weka.filters.unsupervised.instance.RemovePercentage \
  -P 80 -i $dataset_fp-random.arff -o data/test.arff 

# now we can build/test our classifier. here is whats going on: 
#$ -t : training file
#$ -T : testing file
#$ -i : outputs detailed information-retrieval statistics for each class
#$ -k : outputs information-theoretic statistics 
#$ -d : sets model output file 
# then we redirect the output to a file
# use -h at the commandline to see all the available options
java -Xmx$memory -cp weka.jar weka.classifiers.trees.J48 -t data/train.arff \
  -T data/test.arff -i -k -d $dataset_fp-J48.model > summary-j48.txt
