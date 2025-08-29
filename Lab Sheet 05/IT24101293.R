setwd("C:\\Users\\IT24101293\\Desktop\\IT24101293")

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

# Rename the column (if needed) and attach
names(Delivery_Times) <- "Delivery_Time"
attach(Delivery_Times)

# Create histogram
histogram <- hist(Delivery_Time, 
                  main = "Histogram for Delivery Times", 
                  breaks = seq(20, 70, length = 10), 
                  right = FALSE, 
                  xlab = "Delivery Time (minutes)")

# Interpretation (to be included in your Word document):
# - Check the histogram output for skewness:
#   - Right-skewed: Longer tail on the right (higher values).
#   - Left-skewed: Longer tail on the left (lower values).
#   - Symmetric: Roughly equal tails on both sides.
#   - Multimodal: Multiple peaks.

# Calculate cumulative frequencies
breaks <- histogram$breaks
cum_freq <- cumsum(histogram$counts)

# Create cumulative frequency polygon
new <- c(0, cum_freq[-length(cum_freq)])  # Prepend 0 and shift values
plot(breaks, c(new, cum_freq[length(cum_freq)]), 
     type = 'l', 
     main = "Cumulative Frequency Polygon for Delivery Times", 
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency", 
     ylim = c(0, max(cum_freq)))
points(breaks, c(new, cum_freq[length(cum_freq)]), pch = 16)

# Combine breaks and cumulative frequencies
cbind(Upper = breaks, CumFreq = c(new, cum_freq[length(cum_freq)]))