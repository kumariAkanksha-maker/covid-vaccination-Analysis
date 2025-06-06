import pandas as pd
import os

# Step 1: Load raw data
df = pd.read_csv('akanksha covid_vaccination_india_sample (1).csv')

# Step 2: Check the structure
print(df.head())

# Step 3: Rename columns to match the CSV structure
df.columns = ['State_or_Date', 'Total_Doses', 'First_Dose', 'Second_Dose']

# Optional: Handle missing values (if any)
df.fillna(0, inplace=True)

# ✅ Ensure the directory exists
output_dir = 'Covid19-Vaccine-Analysis/data'
os.makedirs(output_dir, exist_ok=True)

# Step 4: Export cleaned data
df.to_csv(f'{output_dir}/cleaned_data.csv', index=False)

print("✅ Cleaned data saved successfully!")
