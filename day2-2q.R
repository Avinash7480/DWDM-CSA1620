prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30)


bin_equal_frequency <- cut(prices, breaks = quantile(prices, probs = c(0, 1/3, 2/3, 1)), labels = FALSE)

bin_means <- tapply(prices, bin_equal_frequency, mean)
bin_boundaries <- quantile(prices, probs = c(0, 1/3, 2/3, 1))
hist(prices, breaks = bin_boundaries, main = "Histogram with Equal-Frequency Partitioning (3 Bins)",
     xlab = "Prices", ylab = "Frequency", col = "lightblue")