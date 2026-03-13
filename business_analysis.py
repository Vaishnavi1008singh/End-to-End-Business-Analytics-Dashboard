
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('../Dataset/business_sales_data.csv')

print("Dataset Preview:")
print(df.head())

print("\nTotal Sales:", df['Sales'].sum())
print("Total Profit:", df['Profit'].sum())

product_sales = df.groupby("Product")["Sales"].sum()
print("\nSales by Product:")
print(product_sales)

city_sales = df.groupby("City")["Sales"].sum()
print("\nSales by City:")
print(city_sales)

df["Order_Date"] = pd.to_datetime(df["Order_Date"])
monthly_sales = df.groupby(df["Order_Date"].dt.month)["Sales"].sum()

monthly_sales.plot()
plt.title("Monthly Sales Trend")
plt.xlabel("Month")
plt.ylabel("Sales")
plt.show()
