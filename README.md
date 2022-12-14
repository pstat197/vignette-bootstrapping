# vignette-bootstrapping

Vignette on bootstrapping with a logistic regression model on horse races in Hong Kong; created as a class project for PSTAT 197A in Fall 2022.

Contributors: Yujie Li, Aria Kajeh, Evan Ji, William Long

## Description

Bootstrapping is a statistical technique used for estimating population statistics using just the data from one representative sample. Since one sample can only provide one estimate for a particular population statistic, we cannot obtain any sense of variance from using just that one sample. Bootstrapping is the process of resampling with replacement from the original sample to obtain more representative samples of the population and allows us to generate a distribution of estimates. This makes it easier for us to perform hypothesis tests and construct confidence intervals, as well as helping us to make better inferences about the whole population.

### Abstract

For our vignette, we will be using the example data listed below to perform logistic regression to attempt to predict whether a horse will win its race or not. Bootstrapping will be used to estimate population means for certain variables(e.g. weight and age) and improve the inferential usefulness of our model(s). We will also use bootstrapping to aid us in validating the predictive accuracy of our model.

### Example Data

The example data we used is a Kaggle dataset containing information from throughbred races conducted by the Hong Kong Jockey Club from 6/1/1997 - 08/27/2005 (<https://www.kaggle.com/datasets/gdaley/hkracing>). In particular we are looking at the runs.csv file which contains information from specific horse runs in each race.

### Outcomes

By the end of this vignette, students should have learned how to bootstrap a distribution of sample statistics from one representative sample of a population.

Students should also be able to construct confidence intervals from the distributions obtained from bootstrapping and be able to use that inferential knowledge to build more accurate regression models.

## Contents

Our data/raw folder contains the .csv files from the original Kaggle dataset. We are mainly focused on runs.csv which contains information about individual horse performances in the Hong Kong races. The codebook.txt contains variable descriptions of runs.csv

The scripts folder contains our preprocessing scripts for reading and cleaning the data, exploratory data analysis, and our regression models.

Our results folder contains our drafts, writeups, and conclusions for the vignette.

## Reference list

<https://towardsdatascience.com/linear-regression-with-bootstrapping-4924c05d2a9>

MDSR 9.3 (<https://mdsr-book.github.io/mdsr2e/ch-foundations.html#sec:boot>)

<https://influentialpoints.com/Training/nonparametric-or-parametric_bootstrap.htm>

<https://www.researchgate.net/profile/Daniel-Berrar/publication/332553015_Introduction_to_the_Non-Parametric_Bootstrap/links/5cbd1b29299bf12097766227/Introduction-to-the-Non-Parametric-Bootstrap.pdf>

Images:

<https://blogs.sas.com/content/iml/2018/12/12/essential-guide-bootstrapping-sas.html>

<https://yashuseth.wordpress.com/2017/12/02/bootstrapping-a-resampling-method-in-statistics/>
