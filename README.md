# Handwritten Digits
Various classification algorithms applied to handwritten digits. Each algorithm is implemented using both R and Python.

### About data set

The dataset comes from the famous [MNIST Handwritten Digits](http://yann.lecun.com/exdb/mnist/) and has been pre-processed. The `training_set.csv` contains the response and the `test_set.csv` does not contain the response. Currently we use the first 40000 rows of `training_set.csv` as our training set and the rest of `training_set.csv` as our test set.

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

##### k-NN classification 

```
> source('knn.r')
[1] "There are  2000  data points in total"
[1] "The model made  1912  correct predictions"
```
