library(dplyr)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
linreg_model <- lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,MechaCar_mpg)
summary(linreg_model)

MechaCar_suspension_coil <- read.csv(file="Suspension_Coil.csv", check.names=F, stringsAsFactors = F)
total_summary <- MechaCar_suspension_coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), Std_Dev_PSI=sd(PSI), .groups = 'keep')
lot_summary <- MechaCar_suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), Std_Dev_PSI=sd(PSI), .groups = 'keep')

t.test(MechaCar_suspension_coil$PSI,mu=1500)
t.test(subset(MechaCar_suspension_coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(MechaCar_suspension_coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(MechaCar_suspension_coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)