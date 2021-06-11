# MechaCar_Statistical_Analysis

## Overview of Project

### Purpose: Use 'R' to perform data analytics to review the production data for insights that may help the manufacturing team and test the prototype.
###### Use multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
###### Create summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
###### Run t-tests to determine if the manufacturing lots are statistically different from the mean population
###### Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Results: 
## D1: Delieverable 1: Linear Regression to Predict MPG
#### D1.1: The MechaCar_mpg.csv file is imported and read into a dataframe 
![alt text](https://github.com/vd1310/MechaCar_Statistical_Analysis/blob/main/D1.PNG)

#### D1.2: RScript for a linear regression model to be performed on all six variables 
lm_mcar<-lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df)

#### D1.3: RScript for a linear regression model to be performed on all six variables 
summary(lm_mcar)
![alt text](https://github.com/vd1310/MechaCar_Statistical_Analysis/blob/main/d1.3.PNG)

#### D1.4: Summary:
#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
##### According to our results, vehicle weight and AWD are statistically unlikely to provide random amounts of variance to the linear model. (Pr(>|t|) values)

#### Is the slope of the linear model considered to be zero? Why or why not?
##### No. P-value is 5.35e-11 which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
##### According to the summary output, the r-squared value is  0.6825 in the simple linear regression model which means that roughly 68% of the variablilty of our dependent variable is explained using this linear model. Therefore, we anticipate that the linear model will perform well or linear model predict mpg of MechaCar prototypes effectively

## D2: Delieverable 2 - Summary Statistics on Suspension
#### D2.1: Suspension_Coil.csv file is imported and read into a dataframe
![alt text](https://github.com/vd1310/MechaCar_Statistical_Analysis/blob/main/d2.1.PNG)

#### D2.2 RScript is written to create a total summary dataframe that has the mean, median, variance, and standard deviation of the PSI for all manufacturing lots
##### total_summary <- suspension_table %>% summarize(Mean=mean(PSI),Median = median(PSI), Variance = var(PSI), StandardDev = sd(PSI))
![alt text](https://github.com/vd1310/MechaCar_Statistical_Analysis/blob/main/D2.2.PNG)

#### D2.3 RScript is written to create a lot summary dataframe that has the mean, median, variance, and standard deviation for each manufacturing lot 
##### lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median = median(PSI), Variance = var(PSI), StandardDev = sd(PSI), .groups = 'keep')
![alt text](https://github.com/vd1310/MechaCar_Statistical_Analysis/blob/main/D2.3.PNG)

#### D2.4 Summary Statistics on Suspension
##### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
##### The overall mean is 1498.78 which is pretty close to 1500, Lot 1 specifically is better representation of the pouplation with mean of 1500, very less variance of .97 and standard deviation of .98. So Lot 1 meets the design specifications.

## D3: Delieverable 3 - T-Tests on Suspension Coils 
#### D3.1: RScript for t-test that compares all manufacturing lots against mean PSI of the population
##### t.test(suspension_table$PSI, mu = 1500)
#### D3.2: RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population
##### t.test(subset(suspension_table,Manufacturing_Lot=='Lot1')$PSI, mu = 1500)
##### t.test(subset(suspension_table,Manufacturing_Lot=='Lot2')$PSI, mu = 1500)
##### t.test(subset(suspension_table,Manufacturing_Lot=='Lot3')$PSI, mu = 1500)
##### ![alt text](https://github.com/vd1310/MechaCar_Statistical_Analysis/blob/main/D3.PNG)

#### D3.3: Summary of the t-test results across all manufacturing lots and for each lot
##### P value for overall data is .06, for lot 1 is 1, for lot 2 is .6072 and for lot3 is .0416. We are focussing on callculated p-value in the t tests. Assuming our significance level was the common 0.05 percent, p-value for lot 3 is below our significance level. For Lot 1&2, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar (as p values for these lots are higher than our significance level)

## D4: Delieverable 4 - Study Design: MechaCar vs Competition


#### Metric to be tested : 

#### Statistical test: Multiple linear regression is selected as statistical test to identify variance in dependent variable wrt to a combination of independent variables. Selected linear regression for predictive analysis. The linear regression model analyzes the relationship between the response or dependent variable and a set of independent or predictor variables. we will also use T test 

#### Null hypothesis

#### The data for the statistical test


