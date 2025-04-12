# Electric Power Consumption Analysis

This project is part of the Exploratory Data Analysis course. It uses data from the **UC Irvine Machine Learning Repository** to analyze household electric power consumption for the dates **February 1 and 2, 2007**.

## Dataset

- **Source**: [UC Irvine Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/individual+household+electric+power+consumption)
- **Description**: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years.

We focus only on two specific days: **2007-02-01** and **2007-02-02**.

## Plots

All plots were generated using **base R plotting system** and saved as PNG files (480x480 px).

### 📊 plot1.png
- **What it shows**: Histogram of **Global Active Power**.
- **Insight**: Most of the household's global active power usage falls below 2 kilowatts.

### 📈 plot2.png
- **What it shows**: Line graph of **Global Active Power over time**.
- **Insight**: Visualizes energy consumption patterns across the two-day period.

### 📉 plot3.png
- **What it shows**: Line graph comparing **Sub-metering 1**, **Sub-metering 2**, and **Sub-metering 3** over time.
- **Insight**: Highlights energy usage differences between kitchen, laundry room, and HVAC systems.

### 📊 plot4.png
- **What it shows**: Composite plot with 4 subplots:
  1. Global Active Power vs. time
  2. Voltage vs. time
  3. Sub-meterings 1, 2, 3 vs. time
  4. Global Reactive Power vs. time
- **Insight**: Offers a comprehensive snapshot of the household’s energy metrics over the two days.

## Files in the Repo

- `plot1.R` to `plot4.R`: R scripts that generate each plot
- `plot1.png` to `plot4.png`: Output plot images
- `.gitignore`: To ignore R-specific environment files
- `README.md`: This file

## How to Reproduce

1. Clone the repository.
2. Make sure `household_power_consumption.txt` is in your working directory.
3. Run each of the plot scripts in R to regenerate the plots.

---


