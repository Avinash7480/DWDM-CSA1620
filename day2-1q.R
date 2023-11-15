# Data
age_groups <- c("5-6 years", "7-8 years", "9-10 years")
photograph_B <- c(22, 28, 10)
photograph_C <- c(20, 40, 40)

# 1. Calculate the sample covariance between B and C using cov()
cov_BC <- cov(photograph_B, photograph_C)

# 2. Create a matrix for preferences
preference_matrix <- matrix(c(photograph_B, photograph_C), nrow = 3, byrow = TRUE)

# Calculate the sample covariance matrix for preferences using cov()
cov_preferences <- cov(preference_matrix)

# 3. Calculate the sample correlation between B and C using cor()
cor_BC <- cor(photograph_B, photograph_C)

# 4. Calculate the sample correlation matrix for preferences using cor()
cor_preferences <- cor(preference_matrix)

# Print the results
print("Sample Covariance between B and C:")
print(cov_BC)

print("Sample Covariance Matrix for Preferences:")
print(cov_preferences)

print("Sample Correlation between B and C:")
print(cor_BC)

print("Sample Correlation Matrix for Preferences:")
print(cor_preferences)

