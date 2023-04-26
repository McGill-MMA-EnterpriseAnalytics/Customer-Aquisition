# <font color=#FF0000>This is the Data Analyst Branch</font>
 All Files related to Data Analysts are contained here


https://www.kaggle.com/datasets/ramjasmaurya/medias-cost-prediction-in-foodmart

# Overview

## Context
The objective of the project is to minimize the customer acquisition cost by optimizing media campaigns. Indeed, since the covid pandemic and the surge of programmatic advertising, companies compete against each other to get the public’s attention and convert it into (long-term) customers. Therefore, customer segmentation is even more crucial nowadays to address the target with the right codes.

Insights from the data teams can be interpreted in the light of the marketing mix to identify how products, prices, promotions and place affect customers.

## Contribution
The Data Analyst team was responsible for pre-processing the data so that the Data Science team could have a clean dataset for modeling. 

Exploratory data analysis was also done to understand the dataset contents before moving on to heavier tasks.

We also worked with the Business Analyst team to create visualisations that would assist them with their tasks. Based on their feedbacks, the visualisations were updated to reflect the insights they wanted to derive from the data.

Overall, being able to work with these different teams has also helped us in understanding what their work was about, making this project a very good learning experience for us.

# Preprocessing
The purpose is to prepare the data for minimizing the customer acquisition cost. This involves identifying outliers and performing feature engineering, such as encoding categorical variables and scaling numerical variables.

## Data Structure Overview
The raw data is inspected to identify the data types of the columns. Columns containing numerical data and those containing categorical data are separated and stored in different datasets. Additionally, attributes that have already been transformed through the process of dummification are also separated and stored accordingly.

## Descriptive Statistics
The descriptive statistics of numerical and categorical columns are shown.

## Missing Values
Missing values are visualized using a matrix plot. The total number of missing values in each column is also shown.

## Data Cleaning
Isolation Forest algorithm were employed to detect outliers, and a dataframe without outliers is created by dropping them from the original dataframe. Box plots and histograms are created to visualize the distribution of the numerical columns.

## Feature Engineering
Categorical columns are label-encoded. The numerical columns are standardized using standardscaler.
