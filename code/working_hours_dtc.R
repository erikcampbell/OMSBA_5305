# OMSBA 5305 Spring 2023
# Data Translation Challenge
# May, Jarrod
# Vierela, Michael
# Hales, Chris

library(tidyverse)
library(stats)
library(forecast)
library(readxl)
library(lubridate)
library(dynlm)
library(vtable)
library(scales)

# load data, plot and review for trends/seasonality.
data <- read_excel("./Data/ch10_Weekly_Hours.xls")

plot(data, main = "Monthly Hours All Employees from MAR 2006 - MAR 2023 Indexed to 2007 = 100",
     xlab = 'Month/Year', ylab = 'Mean Hours indexed to 2007= 100', col = 'blue', type = "l")

## ggplot
a <- data %>%
  ggplot(aes(x = date, y = hours_worked_index)) +
  geom_line(color = "blue", size = 1.5) +
  labs(title = "Monthly Hours All Employees from MAR 2006 - MAR 2023 Indexed to 2007 = 100",
       y = 'Hours Worked (indexed to 2007 = 100', x = 'Date'
       ) +
  theme_classic()
a

# turn into time-series
y <- ts(data$hours_worked_index, frequency = 12, start = c(2006,3))

plot(y,main = "Average Weekly Hours All Employees from MAR 2006 - MAR 20203",
     xlab = 'Date', ylab = 'Hours Worked(indexed to 2007 = 100',col='blue')



#g1t<-100*diff(Y)/stats::lag(Y,-1)
#g1t
#var(g1t)

#plot(y)
#g2t<-100*diff(y)
#plot(g2t)

#g2t
#mean(g2t)
#var(g2t)

#acf(g2t,lag.max=4, plot=FALSE)
#acf(g2t,lag.max=4)

# plot

# first difference, log and/or first difference and log?

#plot stationarity

# What is ACF and PACF?

# Choose 3 linear models (i.e. AR, MA, ARMA) and estimate

# present:

# Estimation Results

# ACF Correlogram

# PACF Correlogram

#Q-Test

# Summarize all model estimation + evaluation into table (emulate table 8.2)


# Make 6 month/period forecast

# plot multistep of forecast
