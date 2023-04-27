# <font color=#FF0000>Customer-Aquisition Project</font>

## Customer Aquisition Cost Prediction V2

## Project Background - What is this file?

This collection of work is a final group project for Advanced Topics in Information Systems (INSY-695) guided by professor Fatih Nayebi. The project is an extension of our first Machine Learning (ML) complete lifecycle project for Enterprise Data Science & ML Production. We aim to advance the scope of the project by applying best prectices taught in both classes, we are a team of 8 Business Analysts, Data Engineers, Data Scientists, and Product Managers.

The direct link to the data is: https://www.kaggle.com/datasets/ramjasmaurya/medias-cost-prediction-in-foodmart

Each role has their own brach where their documentation lives.


## Framing the Problem

### *Context*

We are an internal data science team for a convenience store company. By using the prediction model created in the first project, we identified ideal locations and marketing strategies and expanded into Canada with 300 new stores. This foreign expansion has created new challenges for our data science team. Previously, we were working with a flat clean data file for research. Now, we have a steady influx of new data that we need to be able to accommodate. There is also demand from our CEO for model improvement.


### *Problem Statment*

Due to the recent influx of data collected after expanding into Canada, we need to implement cloud infrastructure to handle stream data. Per our CEO's request, we will improve our previous model by using advanced machine learning techniques while focusing on explainability. Our model's main objective is to  **minimize the cost of acquisition of customers (CAC)**.



### *Business Value*

The business has realized the importance of data analysis and machine learning solutions and is considering the expansion of their data base by establishing an ongoing flux of data generated by new customers.


#### Action Points:
- Revisit data management processes
- Improve machine learning model

#### Objectives:
- Automation of data processing tasks
- Scalable data pipelines to handle large volumes of data
- Improved accuracy of customer acquisition cost predictions
- Better understanding of factors that influence customer acquisition cost


Study 1 - [Cloud Automation: Understanding the Benefits and Drawbacks of Automation in the CLoud](https://www.businesstechweekly.com/productivity/automation/cloud-automation-understanding-the-benefits-and-drawbacks-of-automation-in-cloud/)
* Reduce Infrastructure Costs:
* More Efficient Workflows:

Study 2 - [An End-to-End Guide to Model Explainability](https://www.analyticsvidhya.com/blog/2021/11/model-explainability/)
* Machine learning models such as TPOT are less interpretable than "Glass Box Models"
* There is a trade-off of explainability for higher accuracy
* Can focus on Post-Hoc explanation of models
* SHAP, LIME


#### Bottom Line:
There are clear benefits for integrating cloud architecture pipelines to our existing solution, especially with the rapid expansion of our company into Canada. The bigger question we will look at: How much more accurate can these advanced machine learning models be than the original solution and will the tradeoff in explainability be worth it? What techniques can we use to best interpret our new models? We may look at Global and Local interpretation for each model, focusing on single predictions and the bigger landscape.




## Model Improvements

### Data Drift

As part of the model improvements a monitorization of data drift was included to ensure that the models we use to make predictions and decisions remain accurate over time. Furthermore  data drift can cause models to become less accurate and reliable, leading to poor predictions.

| Statistical Metric | Cost | Description | Outcome |
| --- | --- | --- | --- |
| Kullback-Leible (KL) | 0.003 | Sensitive to shapes and magnitudes of distributions | Target variable is similar since the two probability distributions being compared are relatively similar |
| Jensen-Shannon (JS) | 0.075 | Sensitive to PDF | Target variable has a similar distribution, while some other features indicate that the two probability distributions being compared are significantly different|
| Kolmogorov-Smirnov (KS) | 3.34E-9 | Sensitive to CDF | Target variables seems to have a difference in distribution. Other features as food family, net weight and units per case also have low p values.|




## Hyper Parameter Optimization

### Optuna

Optuna is an automatic hyperparameter tunning optimization framework for machine learning. Optuna uses a trial and study approach to find the optimal set of hyperparameters to minimize the objective(RMSE).​

Optuna hyperparameter optimization was run on 5 different models to find the best performing hyper parameters. ​

Extra trees was the best performing method in terms of RMSE, however it could not complete the number of trials that was set for other models and had a very long duration to complete the trials.

[Results](https://raw.githubusercontent.com/McGill-MMA-EnterpriseAnalytics/Customer-Aquisition/DataScientist/Optuna/optuna_results.csv?token=GHSAT0AAAAAACBL2KRWV5BS7DAO5WH5VTOQZCKRLBQ)

|   | Model            | RMSE                | Best Parameters                                                                                                                                                                     | Total Time (s)      | Number of Trials |
|---|------------------|----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------|------------------------|
| 0 | AdaBoost         | 19.66903867855756 | {'n_estimators': 270, 'learning_rate': 0.010364114380632922, 'max_depth': 10}                                                                                       | 1532.3362357616425 | 50                   |
| 1 | GradientBoosting | 19.085026466681516 | {'n_estimators': 447, 'max_depth': 10, 'learning_rate': 0.011531641031760971, 'subsample': 0.8059654417619785, 'max_features': 0.9436233736604123} | 1096.4327502250671 | 50                   |
| 2 | LightGBM         | 19.6140652707598     | {'n_estimators': 282, 'max_depth': 9, 'learning_rate': 0.0832759328944029, 'subsample': 0.8081494947509946, 'colsample_bytree': 0.6794904530965484, 'num_leaves': 144, 'min_child_samples': 6} | 87.0603129863739    | 50                   |
| 3 | XGBoost          | 19.55089520837234 | {'n_estimators': 486, 'max_depth': 9, 'learning_rate': 0.04811978249995624, 'subsample': 0.9885251920382132, 'colsample_bytree': 0.7215496126224761}        | 542.5978338718414  | 50                   |


### AutoML

**Definition**:Machine learning technique to automate the entire process of building, training, and deploying models

**Purpose** :Democratize and simplify machine learning by automating the complex and time-consuming process

**Advantages**:No need for data prepoccessing. Ranks the most performing models 

We extracted some interesting variable importances from our model, this helps with global explainability!

| variable       | relative_importance | scaled_importance | percentage |
|----------------|----------------------|------------------------|---------------|
| promotion_name | 126657128.0000000 | 1.0                  | 0.5290338 |
| media_type     | 45477112.0000000     | 0.3590569       | 0.1899532 |
| store_city     | 39855024.0000000     | 0.3146686       | 0.1664703 |
| store_state    | 12092998.0000000     | 0.0954782       | 0.0505112 |
| store_type     | 4118717.2500000       | 0.0325186       | 0.0172035 |
| store_sqft     | 2587962.5                | 0.0204328       | 0.0108097 |
| meat_sqft      | 2130779.7500000       | 0.0168232       | 0.0089000 |


### HyperOpt

* Based on Bayesian Optimization
* Same ranges as other method
* 50 iterations
* Faster than Optuna but slower than randomized search

### Randomized Search

* Randomly selecting the variables
* Same ranges as other method
* 50 iterations
* Significantly faster 
* Sometimes not as accurate as some other methods


### TPOT

| Method                                     | RMSE   | Improvement        | Comments                                       |
|--------------------------------------------|--------|--------------------|------------------------------------------------|
| Model Development                          | 17.55  | Approximately 10% higher RMSE than the previous model | Model development is not the problem |
| Model Development and Feature Selection    | 13.36  | Approximately 10% improvement from our previous model | Our feature selection lowered the accuracy of the model since we did it in two stages |
| TPOT for everything                        | 0.837  | Significant improvement from our previous model | Our final model|


## Model Comparison and Feature Signifigance

| Method                                     | RMSE   |
|--------------------------------------------|--------|
| Optuna                                     | 27.6   |
| HyperOpt                                   | 19.79  |
| Randomized Search                          | 19.73  |
| AutoML                                     | 1.406  |
| AzureML                                    | 1.276  |
| TPOT (for Model Development)               | 17.55  |
| TPOT (for Model Development and Feature Selection) | 13.36 |
| TPOT                                       | 0.837  |


| Variable                          | Feature Significance |
|-----------------------------------|---------------------|
| promotion_name_Free For All       | 0.030                |
| promotion_name_Super Savers       | 0.024                |
| promotion_name_Price Slashers     | 0.024                |
| promotion_name_Save-It Sale       | 0.022                |
| promotion_name_Weekend Markdown   | 0.022                |
| media_type_Cash Register Handout  | 0.022                |
| promotion_name_Double Down Sale   | 0.021                |
| promotion_name_Money Savers       | 0.021                |
| promotion_name_Big Time Discounts | 0.020                |
| media_type_Sunday Paper, Radio    | 0.020                |


We conclude that the end-to-end TPOT model performed the best with a RMSE value of 0.87

### Intepretability

#### *SHAP*



#### *LIME*


## End V2

## Customer Aquisition Cost Prediction V1



## Project Background - What is this file?

This is a Machine Learning (ML) complete lifecycle project for Enterprise Data Science & ML Production (INSY 695). As part of this task we are a team of 7 who are tasked with completing an ML project on a dataset of our choice. There are 10 discrete steps in any data science liefecyle (details in appendix A). **In short this Github Repo is our cumulative work to accomplish a data science project from start to end.**

The direct link to the data is: https://www.kaggle.com/datasets/ramjasmaurya/medias-cost-prediction-in-foodmart

Each role has their own brach where their documentation lives.


## Framing the Problem



### *Context*


Advertisements are everywhere. In our post-pandemic world, ads invade our physical and virtual space. Simultaneously customers’ attention span has decreased. In this race for attention, the media happens to play a critical role. We are an internal data science team for a convience store buisness. Our chain of convenience stores suffered from this crisis and fierce competition. To recover from it, our new CEO wants to open 300 new locations and extend media coverage. Although we have historically been based out of the US we want to expand into Canada. We will assume the markets are similar enough that the US data is directly applicable to the Canadian market. 

We will work to identify growth drivers and better approaches to address our audience with respect to media campaign efficiency. Therefore, our mission will be three-pronged: identify profitable customers’ segments to target, **minimize the cost of acquisition of customers (CAC)**, and analyze the results of our loyalty program. 


### *Problem Statment*


Given the competitive landscape and saturated market, our new CEO who wants to open 300 new locations. Although we have historically been based out of the US we want to expand into Canada. We will assume the markets are similar enough that the US data is directly applicable to the Canadian market. The new CEO is very risk-averse and wants to invest slowly over time, opting to build a baseline customer base by going after low CAC customers

<font size=0.5></font>

<p align="center"><img src="https://user-images.githubusercontent.com/91097605/218141585-85d08804-ba60-4f3b-902d-658e57b75afd.png" width=500> </p><br> The National Association of Convenience Stores (NACS) demonstrates that the US is a competitive market. Published January 2023


### *Buisness Value*

The advertising landscape has exploded over the last 20 years, leading to an infinite number of media options. However, not all these options will give an equal return on investment (ROI). The data team will help reduce risks by laying a foundation of customer acquisition cost as a function of media. Predicting the ROI and number of customers, the data team is positioned to optimize our costs and supply chain. After successfully predicting we can implement business strategies to go after the segments that build a strong customer base, reduce costs to successfully launch our stores in Canada.  

## Machine Learning Approach

We used 3 separate approaches to investigate the problem. We started with a simple linear model, then used more advanced machine learning techniquest and ended with a more advanced casual inference model.

<p align="center"><img src="https://user-images.githubusercontent.com/91097605/220923154-5e299c9e-14e9-495d-a1b2-e888e109888f.png" width=400> </p><br>


### Data Preprocessing
We used the following steps for data pre-processing

<p align="center"><img src="https://user-images.githubusercontent.com/91097605/219875576-8e5670ed-c2b2-4d80-8379-245d079a9fe3.png" width=500> </p><br>

### Modeling Results

We found thatin order to minimize the cusotmer cost of aquisition, we would need to predict it using the factores we have access to. We ran multiple models which produced different key insights. The best model, based on the lowest error was the extra tree model. We will now be able to minimize the CAC and model different senarios based on the model's predictive power.

|Model|Base Model|Linear Model|Artificial Neural Network|Decision Tree|Ada Boost Tree|LightGBM|Gradient Boosting|Random Forest|Extra Tree|
|---|---|---|---|---|---|---|---|---|---|
|MSE|820|810|800|700|650|400|380|330|250|

## Final Insights

From the extra tree model we discovered the feature importances. The model indicated that the media type and meat to toal ration were the most important predictors. So in order to lower our customer aqusition cost, we should fcous on cheaper media and lower the amount of meat in our convient stores.

<p align="center"><img src="https://user-images.githubusercontent.com/91097605/220922554-df8747cb-af1c-4ad1-8972-bf61c459a43c.png" height=500> </p><br>


# Appendix

## Steps in a DataScience Project
The following stesps are the ideal aproach to a data science project and ensure that our methodology is sound and our conclusions fair <br>

1 Framing the Problem <br>
2 Data quisition <br>
3 Data Exploration <br>
4 Data Preparation <br>
5 Modeling <br>
6 Model Evaluation <br>
7 Model Selection <br>
8 Model fine-tuning <br>
9 Solution Presentation <br>
10 Launch Moniroting and maintance.<br>

## Additional Context 

We, the team are an internal data team for a company that operates a chain of convenient stores. Although we are successful we need to grow internataionally as the US market is saturated. The National Association of Convenience Stores (NACS) demonstrates through their fact sheet that the US is a highly competitive and challenging market to perate in. Therefore sales will plateau eventually unless we act. Further to market saturation, media attention in a post covid world is diminishing. Therefore we will need to work hard to remain a profitable and growing company. Why not work smarter with the help of data science and not harder.

## Team Organization V1

Below is a table that divides our roles and responsabilities.
<p align="center"><img src="https://user-images.githubusercontent.com/91097605/220213486-8cbd1a63-43f3-49f3-8ead-f8291240b8df.png" width=500> </p><br>


|   |Data Analyst |Data Scientist |Business Analyst |Product Manager |Project Manager |
|:--|:--|:--|:--|:--|:---|
|Responsabilities:|Data Cleanup <br><br> Data vizualization <br><br> Data Metrics <br><br><br><br><br> |Data Modelling <br><br> Model Correlation <br><br><br><br><br><br>|Interpretation of results <br> <br> Data vizualization <br><br><br><br><br><br>|Market expert <br><br> Strategy Report <br><br> Slides <br><br><br><br>|Keep track of progress <br><br> Meeting organization <br><br>  Check on work flow Deliverables <br><br> Setup Github |
|Lead|Priyanka |Raman |Lucie |Julie |Emery |
|Team|Jeongho <br> Priyanka |Jeongho <br> Bennett <br> Raman |Lucie <br> Bennett <br> Julie <br> Emery |Lucie <br> Julie <br> Emery <br> Raman|Emery <br> Julie|

|:--|:--|:--|:--|:--|:---|
### Market Context

There are 150 thousand convient stroes accross the US. Sales accout for more than $650 billion USD. The conservative estimates of growth for this industry are projected to continue at their 1-3% annual pace, keeping up with and occassionaly passing inflation. Some estimates forsee a steeper growth as more people search for convience ahead of other factors. The convience plays a large role in our short attention span world. Convience also plays a key role in rescessions as consumers gernally use low absolute cost solutions over higher absolute priced itesm, benifiting the convient store. In other the consumer will pick a words a 6 pack of 231 ml pepsi will cost $2.99 at the convient store over a 6 pack of 491ml pepsi from the grocery store for  $4.49 bcasue of the absolute differnce in prcie. The ingenuity and creativty in convient stores  is very active and poisted to increase sales and the industry growth quickly. <br><br>
However, canada has a much smaller economy and less developed in terms of convient stroes. The estimated size of the convient store industry is $11.4 billion USD. Whit a population that is 10% that of the US, and a similar cultural value system it is surprising then that the indsutry size is only 2% that of the US. We see an opportunity for the market to grow, and for our 300 new stores to become a market leader, or rapid growting company. If the market grows by 2x over 10 years and our company accounts for 20% of that growth, we would see sales increase by $2 billion USD.


<img src="https://user-images.githubusercontent.com/91097605/218141585-85d08804-ba60-4f3b-902d-658e57b75afd.png"> NACS Keyfindings from their factbook. Published January 2023
|||
|:--|:--|
|<img src="https://user-images.githubusercontent.com/91097605/218142344-c2e6b518-eac9-4625-bfde-0f2d3bdc4c33.png" width=400 > <br> <br>  Heatmap of convient stores accross US. Convient stores centered around population. Darker indicates higher density, lighter indicates lower desnisty.|<img src="https://user-images.githubusercontent.com/91097605/218147383-16e035a9-c555-431c-9c8b-d9bb70e428ed.png" width=400> <br><br> Heat map of US population distribution. Demonstrating overlap between conienvce stores and population.|

## Sources
NACS: https://www.convenience.org/Research/FactSheets/IndustryStoreCount <br>
Statistica: https://www.statista.com/topics/3869/convenience-stores-in-the-us/#topicOverview<br>
Decreased Attention: https://www.usatoday.com/story/life/health-wellness/2021/12/22/covid-attention-span-exhaustion/8926439002/<br>
Canada Convient Store: https://www.ic.gc.ca/app/scr/app/cis/summary-sommaire/44512<br>
Canada Convient store industry size: https://www.ibisworld.com/canada/market-size/convenience-stores/<br>
