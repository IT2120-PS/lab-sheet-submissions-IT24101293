setwd("C:\\Users\\Teshmini\\Desktop\\IT24101293")
getwd()

# Given parameters
mu_true <- 45 
sigma <- 2 
n <- 25 


# i) Generate a random sample of size 25 for the baking time
sample_times <- rnorm(n, mean = mu_true, sd = sigma)


# print the sample 
print("Sample of baking times (minutes):")
print(sample_times)


# basic sample summary
print(paste("Sample size:", length(sample_times)))
print(paste("Sample mean:", mean(sample_times)))
print(paste("Sample standard deviation (sample sd):", sd(sample_times)))

# ii) Test whether the average baking time is less than 46 minutes at 5% level
# Hypotheses:
# H0: mu = 46
# H1: mu < 46 (one-sided)


# Approach A: t-test (use when population sd is unknown)
print("--- One-sample t-test (H0: mu = 46, H1: mu < 46) ---")
t_test_result <- t.test(sample_times, alternative = "less", mu = 46)
print(t_test_result)


# Approach B: z-test (use when population sd is known)
print("--- Z-test using known population sd = 2 (H0: mu = 46, H1: mu < 46) ---")
sample_mean <- mean(sample_times)
z_stat <- (sample_mean - 46) / (sigma / sqrt(n))

# one-sided p-value (lower tail)
p_value_z <- pnorm(z_stat)
print(paste("Sample mean =", sample_mean))
print(paste("Z statistic =", z_stat))
print(paste("One-sided p-value =", p_value_z))


# Decision at alpha = 0.05
alpha <- 0.05
if (p_value_z < alpha) {
  print("Decision (z-test): Reject H0 at alpha = 0.05. Evidence that mean < 46 minutes.")
} else {
  print("Decision (z-test): Fail to reject H0 at alpha = 0.05. Not enough evidence mean < 46 minutes.")
}


# Also show the equivalent t-test decision using t_test_result
if (t_test_result$p.value < alpha) {
  print("Decision (t-test): Reject H0 at alpha = 0.05. Evidence that mean < 46 minutes.")
} else {
  print("Decision (t-test): Fail to reject H0 at alpha = 0.05. Not enough evidence mean < 46 minutes.")
}


