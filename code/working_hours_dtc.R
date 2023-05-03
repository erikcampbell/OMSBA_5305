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

# load data and convert to time-series
data <- read_excel("./Data/ch10_Weekly_Hours.xls")


# plot and review for trends/seasonality
plot(data, main = "Average Weekly Hours All Employees from MAR 2006 - MAR 2023",
     xlab = 'Month/Year', ylab = 'Mean Weekly Hours indexed to 2007= 100')

# turn into time-series

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
