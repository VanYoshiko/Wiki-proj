import matplotlib.pyplot as plt
import csv
from collections import def aultdict

categories = []
amounts = []
with open('expenses.csv) as f:
	reader = csv.reader(f)
	next(reader)

	for row in reader:
		categories.append(row[1])
		amounts.append(float(row[2]))
		
plt.bar(categories, amount)
plt.title('Expenses by Categories')
plt.xlabel('Category')
plt.ylabel('Amount')
plt.xticks('rotation=45')
plt.tight_layout()
plt.savefig('expenses_chart.png')
plt.show()
