# Generating a set of normal independent data for change point detection
# in the independent case

# data is series of samples coming from one normal distribution, that eventually
# starts coming from another distribution

## Parameters of first distribution
# Number of samples from first dist.
N1 <- 40
mean1 <- 0.1
sd1 <- 0.2

## Parameters of second distribution
# Number of samples from second dist.
N2 <- 40
mean2 <- 0.1
sd2 <- 0.3

# Generating the series of samples
s1 <- rnorm(N1, mean=mean1, sd=sd1)
s2 <- rnorm(N2, mean=mean2, sd=sd2)

# Combined sequence of independent data from
combinedSequence <- c(s1, s2)
