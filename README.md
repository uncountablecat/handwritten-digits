# Handwritten Digits
Various classification algorithms applied to handwritten digits. Each algorithm is implemented using both R and Python.

### About data set

The dataset comes from the famous [MNIST Handwritten Digits](http://yann.lecun.com/exdb/mnist/) and has been pre-processed. The `training_set.csv` contains the response and the `test_set.csv` does not contain the response. 

Two csv files looks like this:

`training_set.csv`:

| label | pixel1 | pixel2 | pixel2 | ...... | pixel783
|-------|--------|--------|--------|--------|--------
| 2     | 0      | 233    | 7      | ...... | 0

`test_set.csv`:

| pixel1 | pixel2 | pixel2 | ...... | pixel783
|--------|--------|--------|--------|--------
| 0      | 233    | 7      | ...... | 0

### Results

##### k-NN classification, k = 19

```
> source('knn.r')
[1] "Trained on  40000  data points'
[1] "There are  2000  data points in test set"
[1] "The model made  1912  correct predictions"
```

##### Random Forest classification

```
> source('tree_model.r')
[1] "Trained on  3000  data points"
[1] "There are  7000  data points in test set"
[1] "The model made 6497 correct predictions"
```

##### SVM with polynomial kernel, degree = 2

```
> python svm.py
Original dataset: (42000, 785)
Training set has 4000 rows
Test set has 1000 rows
Accuracy:  0.965
```
