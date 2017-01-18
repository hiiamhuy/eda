# Exploratory data analysis (see readme for more detail)
# Feel free to follow these steps, or complete your own EDA

# Set up (install packages if you don't have them)
#install.packages('vioplot')
#install.packages('plotly')
#install.packages('ggplot2')
#install.packages('tidyr')
#install.packages('dplyr')
library(dplyr)
library(tidyr)
library(ggplot2)
library(plotly)
library(vioplot)
library(readr)
risk.data <- read_csv("~/GitHub/INFO370/eda/health-burden/data/prepped/risk-data.csv")


#setwd('~/GitHub/INFO370/eda/health-burden/data/prepped/risk-data.csv')
#risk.data <- read.csv('./data/prepped/risk-data.csv', stringsAsFactors = FALSE) 

######################
### Data Structure ###
######################

## Using a variety of functions, investigate the structure of your data, such as:
View(risk.data)

# Dimensions, column names, structure, summaries, etc.
dim(risk.data)
structure(risk.data)
summarise(risk.data)
colnames(risk.data)
# Replacing missing values...?

###########################
### Univariate Analysis ###
###########################

## Using a variety of approaches, investigate the structure each (risk column) individually

# Summarize data
summary(risk.data)
# Create histograms, violin plots, boxplots

hist(risk.data$alcohol.use)

hist(risk.data$drug.use)
hist(risk.data$high.meat)
hist(risk.data$low.exercise)
hist(risk.data$smoking)

vioplot(
        risk.data$alcohol.use,
        names = c('alchohol')
)


qplot(risk.data$alcohol.use, 
      geom = "histogram", 
      main = "Histogram for Alcohol", 
      xlab = 'Alcohol')

#p <- ggplot(data = risk.data$high.meat)

risk.data$drug.use <- as.factor(risk.data$drug.use)
p <- ggplot(risk.data$drug.use, aes(x=dose, y=len)) + 
  geom_violin()
p
####################################
### Univariate Analysis (by age) ###
####################################

# Investiage how each risk-variable varies by **age group**

# Create histograms, violin plots, boxplots. Calculate values as needed. 


####################################
### Univariate Analysis (by sex) ###
####################################

# Investiage how each risk-variable varies by **sex**

# Compare male to female values -- requires reshaping (and dropping population)!


########################################
### Univariate Analysis (by country) ###
########################################

## Investiage how each risk-variable varies by **country**

# Aggregate by country

# Create a choropleth map (see https://plot.ly/r/choropleth-maps/)

###########################
### Bivariate Analysis ####
###########################

# Compare risks-variables to one another (visually)
