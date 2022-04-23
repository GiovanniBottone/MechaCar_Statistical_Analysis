# Import Dependency
library(dplyr)

# Deliverable 1 - Linear Regression to Predict MPG
# Import mechaCar Data
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_mpg))


# Deliverable 2 - Summary Statistics on Suspension Coils
# Import suspensionCoil Data
suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Create a summary data frame
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Create a summary data frame grouped by Manufacturing Lot
mlot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))

# Deliverable 3 - T-Test on Suspension Coils
# Determine if PSI across all mlots is statistically different from the population mean of 1,500 psi
t.test(suspension_coil$PSI, mu = 1500)

# Determine if the PSI for each individual mlot is statistically different from the population mean of 1,500 psi
Lot1 = subset(suspension_coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(suspension_coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(suspension_coil, Manufacturing_Lot == 'Lot3')

# Lot 1 T-Test
t.test(Lot1$PSI, mu = 1500) 

# Lot 2 T-Test
t.test(Lot2$PSI, mu = 1500)

# Lot 3 T-Test
t.test(Lot3$PSI, mu = 1500)
