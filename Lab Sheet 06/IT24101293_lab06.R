# Labsheet 06
# Exercise

setwd("C:\\Users\\Teshmini\\Desktop\\IT24101293")

# part 1
# 1)
#Binomial Distribution with n=50 and p=0.85

# 2)
# probability that at least 47 students passed = (p>=47)
# Rearranged probability statement
#P(X>=47) = 1-P(X<47) = 1-P(X<=46)
1- pbinom(46, 50, 0.85, lower.tail = TRUE)

# part 2
# 1)
# Number of customer calls received on a given hour

# 2)
# Poisson distribution with lambda = 12

# 3)
# Exactly 15 calls received in an hour =  P(X=15)
dpois(15, 12)
