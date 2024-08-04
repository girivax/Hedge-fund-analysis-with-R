assets <- c("Large Cap Equity", "Small Cap Equity", "International Equity", "Bonds")
returns <- c(0.08, 0.10, 0.09, 0.04)
stdevs <- c(0.15, 0.22, 0.18, 0.05)

correlation_matrix <- matrix(c(
  1.00, 0.75, 0.60, 0.10,
  0.75, 1.00, 0.50, 0.05,
  0.60, 0.50, 1.00, 0.15,
  0.10, 0.05, 0.15, 1.00
), nrow = 4, byrow = TRUE)

n_portfolios <- 10000
weights <- matrix(runif(n_portfolios * length(assets)), ncol = length(assets))
weights <- weights / rowSums(weights)

portfolio_returns <- weights %*% returns
portfolio_stdevs <- sqrt(diag(weights %*% (correlation_matrix * (stdevs %*% t(stdevs))) %*% t(weights)))

min_var_index <- which.min(portfolio_stdevs)
min_var_return <- portfolio_returns[min_var_index]
min_var_stdev <- portfolio_stdevs[min_var_index]

sharpe_ratio <- (portfolio_returns - 0.02) / portfolio_stdevs
max_sharpe_index <- which.max(sharpe_ratio)
max_sharpe_return <- portfolio_returns[max_sharpe_index]
max_sharpe_stdev <- portfolio_stdevs[max_sharpe_index]

print(paste("Minimum Variance Portfolio Return:", scales::percent(min_var_return, accuracy = 0.01)))
print(paste("Minimum Variance Portfolio StDev:", scales::percent(min_var_stdev, accuracy = 0.01)))
print(paste("Maximum Sharpe Ratio Portfolio Return:", scales::percent(max_sharpe_return, accuracy = 0.01)))
print(paste("Maximum Sharpe Ratio Portfolio StDev:", scales::percent(max_sharpe_stdev, accuracy = 0.01)))