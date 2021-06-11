library(tidyverse)
install.packages()
library(jsonlite)
library(dplyr)

#Deliverable1

MechaCar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm_mcar<-lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df)

summary(lm_mcar)


#Deliverable2

suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- suspension_table %>% summarize(Mean=mean(PSI),Median = median(PSI), Variance = var(PSI), StandardDev = sd(PSI))

lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median = median(PSI), Variance = var(PSI), StandardDev = sd(PSI), .groups = 'keep')


#Deliverable3

t.test(suspension_table$PSI, mu = 1500)
t.test(subset(suspension_table,Manufacturing_Lot=='Lot1')$PSI, mu = 1500)
t.test(subset(suspension_table,Manufacturing_Lot=='Lot2')$PSI, mu = 1500)
t.test(subset(suspension_table,Manufacturing_Lot=='Lot3')$PSI, mu = 1500)

#Deliverable4 (readme report)







