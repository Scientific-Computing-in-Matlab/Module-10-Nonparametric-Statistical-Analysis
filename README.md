# Module-10 Nonparametric Statistical Analysis

Parametric statistical analyses make the assumption that measurement noise is normally distributed. 
In practice, however, many measurements do not meet this requirement. 

Although Linear Mixed Models (See Parametric Statistics Module) are quite robust against such violations of normality, 
nonparametric methods based on resampling are a useful alternative. 

## Objectives 
At the end of this module you can
 - Describe the differences between parametric and nonparmetric methods
 - Give nonparametric alternatives for some parametric methods.
 - Use bootstrapping and permutation tests to roll your own nonparametric statistical tests.

## Materials

- Study the `./docs/nonparametric.mlx`
- [This site by Jared Wilber](https://www.jwilber.me/permutationtest/) has a nice illustration of a permutation test.

## Assignments

The `./code/whatdoesthisdo.m' script contains functional but horrible code. Don't even think of handing in anything like this for your project! Your task is to decipher what the script actually does and turn this script into readable and reusable Matlab code.

I'll give away that the code runs a 2-tailed permutation test. 

Create a script that 
- uses better variable names
- uses no inline functions (While useful at times, a problem with inline functions is that you cannot debug them).
For this assignment, create a function that will run this type of test with data from any two samples (for instance, as used here, neuronal firing rates observed after injecting ketamine `a` or saline `b`). 

Create a function that performs the main permutation test and
- Takes two vectors of observations as input
- Calls helper functions (the equivalents of `dstd` and `dstdn`). 
- Takes an input argument that allows you to specify the number of boostrapped samples that will be drawn
- Takes an input argument specifying whether plots should be generated.
- Outputs the null distribution, the test metric, and the pValue
- Generates a figure (if specified) showing the cumulative null distribution, the test statistics, and confidence interval.
- Prints the results of the test to the command line
