Data Products Project
========================================================
author: Helping you select features for your new car
autosize: TRUE
Felix E. Rivera-Mariani, PhD

INTRODUCTION
========================================================

This brief presentation is part of the [Coursera] (http://www.coursera.org) course Developing Data Products, which is part of the Johns Hopkins University 10-courses Data Science Specialization. This peer-assessed project is composed of two parts: 1) developing a Shiny application, and 2) preparing a pitch presentation related to the developed Shiny application. This presentation focuses on the second component of the project. 

The developed application can be found at: 
https://friveramariani.shinyapps.io/Mtcars-Clustering/

The source code for the application can be found at:

https://github.com/friveramariani/data-products

*Note: the ui and server files are within the app.R.* 

UTILITY OF THE APPLICATION 
========================================================

Using the **mtcars** dataset found in R, this application can aid you visualize how one feature of a car relates to the others. The features (i.e. variables) that you can evaluate re below:
- **mpg** (miles per gallon) 
- **cyl** (# of cylinders)
- **disp** (displacement) 
- **hp** (gross horsepower)
- **drat** (rear axle ratio)
- **wt** (weight [1000 pounds])

***

- **qsec** (1/4 mile time)
- **vs** (V- or Straight-engine)
- **am** (transmission type)
- **gear** (# of forwards gears)
- **carb** (# of carburetors)


MTCARS DATASET
========================================================
The dataset use in this project is the Motor Trend Card Road tests (mtcars), which is found in R. Below are the dimensions and classess of the variabels. 

```r
str(mtcars)
```

```
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```

EXAMPLE PLOT
===
Here is an example of the relationship between mpg (miles per gallon), disp (displacement), and wt (weight) variables. 

```r
library(car)
scatterplot.matrix(~mpg+disp+wt, data=mtcars, cex.axis=1.5)
```

![plot of chunk unnamed-chunk-2](app-figure/unnamed-chunk-2-1.png)
