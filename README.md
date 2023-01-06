# MechaCar_Statistical_Analysis
## Overview of Project [^1]
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has requested Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

For this special project, I partnered with Jeremy and the data analytics team do the following:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical
analysis, you’ll write a summary interpretation of the findings.


## Linear Regression to Predict MPG
The dataset contains mpg test results for 50 prototype MechaCars, in which multiple metrics were collected for each vehicle.  A 95% level of confidence was predetermined with a significance level of 0.05%.


The coefficients were calculated for the metrics that were lined up against the mpg. (*see statistics 1*)

mpg = 6.267(vehicle_length) + 0.00125(vehicle_weight) + 0.0688(spoiler_angle) + 3.546(ground_clearance) + -3.411(AWD) + -104(Intercept)


Statistics 1

![mpg_lm_model](https://user-images.githubusercontent.com/112449480/210160429-fef5a00a-80dd-4ba3-b18f-c682826d0e98.png)

Upon further analysis (*see statistics 2*) and calculating the linear regression for the six variables, we find that the **vehicle length** and **ground clearance** variables/coefficients provide a non-random amount of variance to the mpg values in the dataset.  They would have a significant impact to the MPG.  In addition, the slope of the linear model would not be zero as the p-value is much smaller than the significance level of 0.05%. Based on the R-squared of 72%, the linear model will predict the mpg of MechCar prototypes effectively.

Statistics 2

![mpg_lm_model_summary](https://user-images.githubusercontent.com/112449480/210160435-f416d9af-7885-4ffe-a2a3-9240e84cc926.png)



## Summary Statistics on Suspension Coils
The weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Statistics 3, show the PSI summary metrics for the overall lot and Statistics 4, show the PSI summary metrics for each of the lots.

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square
inch. The variance for the overall lot is 62, which is less than the design specifications and thus meets the requirement.  However in reviewing the individual lots, the variance for Lot 1 (0.98 variance) and Lot 2 (7.47 variance) are well below the design specifications. The variance for Lot 3 is 170 and does not meet the design specifications for the PSI not exceed 100.

Statistics 3 - Total Summary

![suspensioncoils_total_summary](https://user-images.githubusercontent.com/112449480/210163140-483efa7f-441f-45ad-8a6b-0e26e3acd251.png)




Statistics 4 - Lot Summary

![suspensioncoils_lot_summary](https://user-images.githubusercontent.com/112449480/210163145-4b36ed0f-19b9-46e4-85f8-d020435ff212.png)



## T-Tests on Suspension Coils
Utilized the T-test method to determine if all manufacturing lots and each lot individually are statistically different from the population mean
of 1,500 pounds per square inch.

The t-test for the overall manufacturing lot yields a p-value of 0.06028 which is above our significance level of 0.05%. Based on the results, there is not sufficient evidence to reject the null hypothesis and the two means are statistically similar. (*see Statistics 5*)

Statistics 5 - PSI T-Test for All Manufacturing Lot
![ttest_all_lots](https://user-images.githubusercontent.com/112449480/210878306-18291d87-4dd9-4eec-bf6f-18161ceccefa.png)


The t-test for manufacturing lots 1 & 2 yield a p-value of 1 and 0.6072 respectively, which are above the 0.05% significance level. Based on the results, there is not sufficient evidence to reject the null hypothesis and the means for lots 1 & 2 are statistically similar to the population mean.  The mean for Lot 1 (1500) and Lot 2(1500.2) fall within the 95% confidence level. (*see Statistics 6*)

For Lot3, the p-value is 0.04168, which is below the 0.05% significance level. Based on the results, there is sufficient evidence to reject the null hypothesis; however the mean (1496.14) falls within the 95% confidence level. (*see Statistics 6*)

Statistics 6 - PSI T-Test for Each Manufacturing Lot
![ttest_lots123](https://user-images.githubusercontent.com/112449480/210878334-e819d2a8-5db1-4954-96f7-a951cf087773.png)


## Study Design: MechaCar vs Competition

Additional analysis that can be executed is test how horsepower, city/highway fuel efficiency, maintenance cost or safety rating for MechaCar performs against the Competition.

- What metric or metrics are you going to test?
  
  The metrics that would be test are city/highway fuel efficiency, maintenance cost and safety rating as these items tend to be the most important among consumers.

- What is the null hypothesis or alternative hypothesis?

  Null hypothesis = the mean of all groups are equal

  Alternative hypothesis = at least one of the means is different from all other groups

- What statistical test would you use to test the hypothesis? And why?
  ANOVA test, as it would allows for test across two or more groups.

- What data is needed to run the statistical test?
  A random sample of 100 for MechaCar and the Competitor.  Also ensure that the data for both are contained in a single dataframe.

[^1]: Utilize some of description from Module 16 work to assist in writing my background for the Challenge
