# Timeless Business Analysis
Understanding the factors that help a business be timeless

## Objectives
1. Identify the **oldest business** on **each continent**.
2. Determine how many **countries per continent lack data** on the oldest businesses, with and without new businesses included.
3. Analyze which business categories are **best suited to last over time** and on which continent they exist.

## Dataset Description
The dataset consists of three tables:
#### businesses:
- **business** - Name of the business.
- **year_founded** - Year the business was founded.
- **category_code** - Code for the business category.
- **country_code** - ISO 3166-1 three-letter country code.

#### countries:
- **country_code** - ISO 3166-1 three-letter country code.
- **country** - Name of the country.
- **continent** - Name of the continent where the country exists.

#### categories:
- **category_code** - Code for the business category.
- **category** - Description of the business category.

## Code Explanation
### 1. Identifying the Oldest Business on Each Continent
To determine the oldest business on each continent, we use the following query:

1

#### Output:
A table listing the oldest businesses on each continent, including their country, business name, and founding year.

11

## 2. Counting Missing Business Data Per Continent
To count how many countries per continent lack data on the oldest businesses, we use:

2

#### Output:
A table listing continents and the number of countries without business data.

22

## 3. Identifying Long-Lasting Business Categories
To determine which business categories have lasted the longest, we use:

3

#### Output:
A table listing the oldest business categories per continent and their founding year.

33

### Results
- **Oldest Businesses**: **Kongō Gumi** in **Japan** (founded in **578**) is the **oldest business** in the dataset.
- **Data Gaps**: **Several countries, particularly in Africa**, lack records on their oldest businesses, with around **15 missing data points**.
- **Resilient Industries**: The **wine industry in Europe** and the **banking sector in Asia** are among the **longest-lasting business categories**, highlighting industries with enduring success.

## Conclusion
This project highlights businesses that have stood the test of time by analyzing their longevity across continents and industries. The insights provide valuable knowledge about resilient industries and geographic business trends.

#### Technology Used
- Language: **SQL**
- Concepts: **Joins**, **Aggregation**, **Data Partitioning**, **Historical Analysis**
