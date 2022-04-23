# MechaCar_Statistical_Analysis

## Overview
Fictional AutoRU's emplpoyee, Jeremy has requested our help to review the production data for AutoRU's newest prototype, the MechaCar, which has been suffering from production troubles that are blocking the manufacturing team’s progress. We'll help Jeremy by performing linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes, collecting summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots, running t-tests to determine if the manufacturing lots are statistically different from the mean population, and designing a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Linear Regression to Predict MPG

![Linear Regression to Predict MPG](https://user-images.githubusercontent.com/95371617/164915946-d8bd1ca3-1bbe-4347-a88c-e3652e41e261.png)

* The (Intercept), vehicle_length & ground_clearance provided a non-random amount of variance to the mpg values.
* Using a significance level of 0.05, we can reject the null hypothesis because our p-value is 5.35e-11. In a typical linear regression, the null hypothesis states that slope is equal to 0; however, if the null hypothesis is rejected, we're stating the alternative is true, indicating that the slope is not 0.
* This linear model predicts the mpg of MechaCar effectively, with an adjusted R-squared value of 0.6825 the prediction is not perfect; however, it is reliable. 

## Summary Statistics on Suspension Coils

![Total Summary](https://user-images.githubusercontent.com/95371617/164916590-44dcbdf6-a09d-4a6c-94d3-b58cf9d4727f.png)

![Lot Summary](https://user-images.githubusercontent.com/95371617/164916599-2cd7b53c-b2db-4ac8-8e42-9a0b19f8a2f1.png)

Based on the above findings, the current manufacturing data does meet thie 100 PSI variance limitation for all manufacturing lots; however, when searching through each lot individually we see that Lot 3 has a variance of 170. Due to this overrage, we must assume that Lot 3 does not meet the necessary requirements.

## T-Test on Suspension Coils

![T-Test Entire Lot](https://user-images.githubusercontent.com/95371617/164916852-3a852b0d-6c30-4f9b-a7ca-de0719d891d5.png)

Following the standard significance level of 0.05, we cannot reject the null hypothesis due to our current p-value, 0.06. 

### Lot 1 T-Test

![Lot 1 T-Test](https://user-images.githubusercontent.com/95371617/164917170-bb7984c0-af53-4569-9ed3-34b9d94ff93b.png)

For lot 1, we cannot reject the null hypothesis using a standard significance level of 0.05 because our P-Value is 1. 

### Lot 2 T-Test

![Lot 2 T-Test](https://user-images.githubusercontent.com/95371617/164917178-8f4b483e-3444-454c-bafa-6898b6f074e5.png)

For lot 2, we cannot reject the null hypothesis using a standard significance level of 0.05 because our P-Value is 0.6072. 

### Lot 3 T-Test

![Lot 3 T-Test](https://user-images.githubusercontent.com/95371617/164917188-03050f8b-48df-4808-b4f7-f0d2e007b37f.png)

For lot 3, we can reject the null hypothesis using a standard significance level of 0.05 because our P-Value is 0.04168. Lot 3 also has the smallest sample mean of the three lots, 1496.14.

## Study Design: MechaCar vs Competition
An important alternative study to consider for future research for MechaCar vs their competition is vehicle life cycles or depreciation rates. Since the two options go hand in hand, we'll use the rate of depreciation as our testing metric. Our null hypothesis will be that MechaCar's rate of depreciation is the better or slower than its competitors. Logically, our alternative hypothesis would be that MechaCar's rate of depreciation is worse or faster than its competitors. To test this hypothesis, MechaCars analysts can use linear regression to forecast MechaCar's rate of depreciation. The main component for a successful test would be obtaining the necessary data, such as vehicle type, year or age, mileage, usage, and fuel type. Once this data has been obtained for MechaCar & their competitors, they can begin their testing.   
