# XYZ Hedge Fund Portfolio Analysis

## Project Overview

This project conducts a comprehensive analysis of a mock $10 million hedge fund portfolio, demonstrating advanced financial modeling and risk assessment techniques. The analysis includes Value at Risk (VaR) calculations, Expected Shortfall (ES) estimations, an Asset-Backed Securities (ABS) 7-Factor Model, Fama-French Three-Factor Model analysis, and Modern Portfolio Theory (MPT) optimization.

## Key Components

1. Value at Risk (VaR) and Expected Shortfall (ES)
   - Calculates 95% and 99% VaR
   - Estimates 95% and 99% ES
   - Provides risk interpretation and management implications

2. ABS 7-Factor Model
   - Analyzes returns based on seven key factors
   - Breaks down factor contributions
   - Offers strategic implications for portfolio management

3. Fama-French Three-Factor Model
   - Examines equity portfolio performance
   - Decomposes returns into factor contributions
   - Suggests strategies based on factor exposures

4. Modern Portfolio Theory (MPT) Analysis
   - Identifies minimum variance and maximum Sharpe ratio portfolios
   - Compares risk-return characteristics
   - Recommends optimal portfolio allocation strategies

## Technologies Used

- R (version 4.1.0)
- Libraries: ggplot2, scales, tidyverse, reshape2, viridis

## How to Run

1. Ensure R and required libraries are installed
2. Clone this repository
3. Open the R script `hedge_fund_analysis.R`
4. Run the script to generate analysis and plots

## Results

The analysis reveals:
- Daily VaR (95%) of $159,258
- Overall negative return (-0.46%) for the ABS portfolio
- Expected equity portfolio return of 10.00%
- Efficient frontier analysis showing optimal risk-return trade-offs

For detailed results and visualizations, please refer to the generated plots and the full report PDF.

## Future Improvements

- Implement Monte Carlo simulations for more robust VaR estimations
- Incorporate machine learning models for return predictions
- Expand the factor model to include more asset classes

## Author

[Your Name]

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

- Financial data sourced from [mention your data source]
- Inspired by real-world hedge fund analysis techniques