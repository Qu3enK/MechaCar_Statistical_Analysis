#Load Packages
library(jsonlite)
library(tidyverse)

#Linear Regression to Predict MPG
mechacar_df <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import MechaCar_mpg data to dataframe
head(mechacar_df)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df)) #generate summary stats


#Create Visualizations for the Trip Analysis
scoil_table <- read.csv(file='Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import Suspension Coil data to table
head(scoil_table)

total_summary <- scoil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') #create summary table

lot_summary <- scoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') #create lot summary table

#T-Tests on Suspension Coils
?t.test()

t.test(scoil_table$PSI, mu=1500) #PSI across all lots vs population mean

#PSI for each lot vs the population mean
t.test(subset(scoil_table$PSI,scoil_table$Manufacturing_Lot=="Lot1"), mu=1500) #Lot 1
t.test(subset(scoil_table$PSI,scoil_table$Manufacturing_Lot=="Lot2"), mu=1500) #Lot 2
t.test(subset(scoil_table$PSI,scoil_table$Manufacturing_Lot=="Lot3"), mu=1500) #Lot 3
