# MechaCar Statistical Analysis

## Overview

### Purpose
To review and analyse the production data of MechaCar for insights that may help the manufacturing team overcome production troubles that are hindering progress.

### Methodology
The analysis will be performed using R Script through the following steps:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Linear Regression to Predict MP

![](https://github.com/nishavenkatesh11/MechaCar_Statistical_Analysis/blob/main/screenshots/1_linear_regression_results.png)

The variables/coefficients that provide a non-random amount of variance to the mpg values in the dataset are ground clearance and vehicle length as identified by the "***" in the screenshot. The *** indicates a highly significant variable, which is due to the extremely low p-value.

The slope of the linear model is considered to be zero because the R2 value is greater than 0.65 showing a good correlation between the independent variables and dependent variable. 

This linear model does predict mpg of MechaCar prototypes effectively because it has a moderately strong correlation between the variables and the MPG. The model can be improved by dropping variables with lower significance.

## Summary Statistics on Suspension Coils

![](https://github.com/nishavenkatesh11/MechaCar_Statistical_Analysis/blob/main/screenshots/2-1_Total_summary.png)

![](https://github.com/nishavenkatesh11/MechaCar_Statistical_Analysis/blob/main/screenshots/2-1_Lot_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data does meet this design specification for all manufacturing lots in total because the total variance is below 100 PSI, and does meet this design specification for each lot individually because while lots 1 and 2 are below the variance threshold of 100 PSI, lot 3 is 70% above the design specification at over 170 PSI.

## T-Tests on Suspension Coils
This component of the analysis examines whether the aggregated and individual manufacturing lots do not have PSI mean values that are statistically different from the population mean of 1500 PSI. (Null Hypothesis)

![](https://github.com/nishavenkatesh11/MechaCar_Statistical_Analysis/blob/main/screenshots/3.1_t_test_overall.png)
The t-test for aggregated manufacturing lots and PSI shows the confidence interval for the mean as between 1497.507 and 1500, and a true mean of 1498.78. With a p-value of 0.06028, we can't reject the null hypothesis. Therefore, the mean is not statistically different from the population mean.

![](https://github.com/nishavenkatesh11/MechaCar_Statistical_Analysis/blob/main/screenshots/3.2_t_test_subset_lot1.png)
The t-test for  manufacturing lot 1 and PSI shows the confidence interval for the mean as between 1499.719 and 1500.281, and a true mean of 1500. With a p-value of 1, we can't reject the null hypothesis. Therefore, the mean is not statistically different from the population mean.

![](https://github.com/nishavenkatesh11/MechaCar_Statistical_Analysis/blob/main/screenshots/3.2_t_test_subset_lot2.png)
The t-test for manufacturing lot 2 and PSI shows the confidence interval for the mean as between 1499.423 and 1500.977, and a true mean of 1500.2. With a p-value of 0.6027, we can't reject the null hypothesis. Therefore, the mean is not statistically different from the population mean.

![](https://github.com/nishavenkatesh11/MechaCar_Statistical_Analysis/blob/main/screenshots/3.2_t_test_subset_lot3.png)
The t-test for manufacturing lot 3 and PSI shows the confidence interval for the mean as between 1492.431 and 1499.849, and a true mean of 1496.14.Therefore, the mean is statistically different from the population mean of 1500. With a p-value of 0.04168, we can reject the null hypothesis. Therefore, the mean is statistically different from the population mean.


## Study Design: MechaCar vs Competition
Below is a short description of a statistical study that can quantify how the MechaCar performs against the competition. 

### Metrics
This study proposes to test the cost of the vehicle and maintenance costs for the first 5 years of use. 

Rationale: Due to the financial duress caused by the pandemic, and the rise of remote work, customers are scrutinizing spending. Therefore to be competitive in the automotive industry MechaCar has to be competitively priced not just in vehicle purchase costs, but also in ongoing costs like maintenance. 

### Hypotheses
Null: The cost of the MechaCar is not statistically different from it's biggest competitor.
Alternative: The cost of the MechaCar is statistically higher or lower than than of it's biggest competitor.

### Statistical Test
Multiple Linear Regression is recommended as the analysis is looking at two independent variables of continuous data (purchase cost and maintenance costs) to predict a single dependent variable of contiuous data (sales).

### Data Required
To complete this analysis, numerical data on vehicle price and maintenance costs over 5 years will be required for all models and tiers of the MechaCar.


