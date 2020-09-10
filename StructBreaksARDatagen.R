# Structural Breaks in Time AR Data Gen

## Model parameters
# Setting the rng seed to allow reproduceable runs
set.seed(1)
# Length of the first AR process
n1 = 20

# Length of the second AR process
n2 = 20

arOrder = c(1,0,0)
arCoeff = 0.1
arSD = 0.1

ar1Mean = 0.2
ar2Mean = 0.5

## Model setup
# First model with defined parameters
ARModel1 <- list(order = arOrder, ar = arCoeff)

# Second model with larger mean
ARModel2 <- list(order = arOrder, ar = arCoeff)

## Process Simulations
AR_M1 <- arima.sim(n = n1, model = ARModel1, mean = ar1Mean, sd = arSD)

AR_M2 <- arima.sim(n = n2, model = ARModel2, mean = ar2Mean, sd = arSD)

# Smashing together the two ar simulations
combinedSequence = c(AR_M1, AR_M2)
