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