# MechaCar_Statistical_Analysis

## Overview of Project

### Purpose: AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. Use 'R' to perform data analytics to review the production data for insights that may help the manufacturing team
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

#### Is the slope of the linear model considered to be zero? Why or why not?

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?


## Summary: 
#### 

### Additional visualizations that can conducted
##### 1

