# MechaCar_Statistical_Analysis

## Overview of Project

### Purpose: Use 'R' to perform data analytics to review the production data for insights that may help the manufacturing team and test the prototype.
###### Use multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
###### Create summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
###### Run t-tests to determine if the manufacturing lots are statistically different from the mean population
###### Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Results: 
### D1: Delieverable 1
#### D1.1: The MechaCar_mpg.csv file is imported and read into a dataframe 
![alt text](https://github.com/vd1310/NY_Bike_TripData_Analysis/blob/main/d1.PNG)

#### D1.2: RScript for a linear regression model to be performed on all six variables 
lm_mcar<-lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df)

#### D1.3: RScript for a linear regression model to be performed on all six variables 
summary(lm_mcar)
![alt text](https://github.com/vd1310/NY_Bike_TripData_Analysis/blob/main/d1.PNG)

### D1.4: Summary:
#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
According to our results, vehicle weight and AWD are statistically unlikely to provide random amounts of variance to the linear model. (Pr(>|t|) values)
#### Is the slope of the linear model considered to be zero? Why or why not?
No. P-value is 5.35e-11 which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
According to the summary output, the r-squared value is  0.6825 in the simple linear regression model which means that roughly 68% of the variablilty of our dependent variable is explained using this linear model. Therefore, we anticipate that the linear model will perform well or linear model predict mpg of MechaCar prototypes effectively

## Summary: 
#### 

### Additional visualizations that can conducted
##### 1

