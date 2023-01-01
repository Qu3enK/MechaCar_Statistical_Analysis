library(jsonlite)
library(tidyverse)
mechacar_df <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import MechaCar_mpg data to datqaframe
head(mechacar_df)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df)) #generate summary stats
