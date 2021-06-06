
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Insured-Analysis

The code is avaible in the `Insured-Analysis.R` file.

With a series of data which correspond to the claims of an insurer in
Monterrey. It is to analyze and combine the risks of the insurer’s
portfolio. This report is created as a support for the risk committee to
know the influence of the claims with the variables that are known.

The first step is to take a look at our data.

    #>   Kilometres Zone Bonus Make Insured Claims Payment
    #> 1          1    1     1    1  455.13    108  392491
    #> 2          1    1     1    2   69.17     19   46221
    #> 3          1    1     1    3   72.88     13   15694
    #> 4          1    1     1    4 1292.39    124  422201
    #> 5          1    1     1    5  191.01     40  119373
    #> 6          1    1     1    6  477.66     57  170913

-   The kilometers variable describes the category of the number of
    kilometers driven per insured. 1.- &lt;1,000 km. 2.- 1,000 -15,000
    km. 3.- 15,000 - 20,000 km. 4.- 20,000 - 25,000 km. 5.- 25,000 km.

-   The zone variable describes the municipality to which the insured
    belongs. 1.- Monterrey. 2.- San Pedro. 3.- San Nicolas. 4.-
    Escobedo. 5.- Guadalupe. 6.- Garcia. 7.- Others.

-   Variable Bonus: Number of years since the insured filed a claim +1

-   Variable Make: Model of the insured car 1-8 represents a certain
    model and 9 represents the rest.

-   Insured variable: Number of insured per policy year.

-   Claims variable: Number of claims made by the lot or insured.

### First descriptive analysis

In order to understand in a correct way the data being handled, an
analysis of the dataphrame was made. A sampling of the variables that
are in our model is made, as well as the relationship that they have
with each other.

![](README_files/figure-gfm/pressure-1.png)<!-- -->![](README_files/figure-gfm/pressure-2.png)<!-- -->![](README_files/figure-gfm/pressure-3.png)<!-- -->

#### a)Sum of insured per kilometer:

![](README_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

#### b)Sum of payments per Zone:

![](README_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

#### c)Sum of claims per Model:

![](README_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

A more exhaustive analysis of each variable as well as the relationship
of one to the other can be found at in the `Insured-Analysis.R` file.

### Correlation with the variable payments

For the insurance company, it is essential to see the relationship
between the payment variable and the other variables, so we studied the
correlation between the number of claims and the number of years in the
portfolio in order to focus our efforts on strengthening everything that
improves the payments received.

Making a correlation matrix we can see the relationship of one variable
to another.

![](README_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

It can be seen that the variables with the highest correlation with
payments are Insured and claims. Therefore a scatterplot of these
variables was made.

![](README_files/figure-gfm/unnamed-chunk-9-1.png)<!-- -->![](README_files/figure-gfm/unnamed-chunk-9-2.png)<!-- -->
