# <font color=#FF0000>Customer-Aquisition Project</font>

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

## Team Organization

Below is a table that divides our roles and responsabilities.
<p align="center"><img src="https://user-images.githubusercontent.com/91097605/220213486-8cbd1a63-43f3-49f3-8ead-f8291240b8df.png" width=500> </p><br>


|   |Data Analyst |Data Scientist |Business Analyst |Product Manager |Project Manager |
|:--|:--|:--|:--|:--|:---|
|Responsabilities:|Data Cleanup <br><br> Data vizualization <br><br> Data Metrics <br><br><br><br><br> |Data Modelling <br><br> Model Correlation <br><br><br><br><br><br><br><br>|Interpretation of results <br> <br> Data vizualization <br><br><br><br><br><br><br><br>|Market expert <br><br> Strategy Report <br><br> Slides <br><br><br><br><br><br>  |Keep track of progress <br><br> Meeting organization <br><br>  Check on work flow Deliverables <br><br> Setup Github |
|Lead|Priyanka |Raman |Lucie |Julie |Emery |
|Team|Jeongho <br> Priyanka |Jeongho <br> Bennett <br> Raman |Lucie <br> Bennett <br> Julie <br> Emery |Lucie <br> Julie <br> Emery <br> Raman|Emery <br> Julie|



### Market Context

There are 150 thousand convient stroes accross the US. Sales accout for more than $650 billion USD. The conservative estimates of growth for this industry are projected to continue at their 1-3% annual pace, keeping up with and occassionaly passing inflation. Some estimates forsee a steeper growth as more people search for convience ahead of other factors. The convience plays a large role in our short attention span world. Convience also plays a key role in rescessions as consumers gernally use low absolute cost solutions over higher absolute priced itesm, benifiting the convient store. In other the consumer will pick a words a 6 pack of 231 ml pepsi will cost $2.99 at the convient store over a 6 pack of 491ml pepsi from the grocery store for  $4.49 bcasue of the absolute differnce in prcie. The ingenuity and creativty in convient stores  is very active and poisted to increase sales and the industry growth quickly. <br><br>
However, canada has a much smaller economy and less developed in terms of convient stroes. The estimated size of the convient store industry is $11.4 billion USD. Whit a population that is 10% that of the US, and a similar cultural value system it is surprising then that the indsutry size is only 2% that of the US. We see an opportunity for the market to grow, and for our 300 new stores to become a market leader, or rapid growting company. If the market grows by 2x over 10 years and our company accounts for 20% of that growth, we would see sales increase by $2 billion USD.


<img src="https://user-images.githubusercontent.com/91097605/218141585-85d08804-ba60-4f3b-902d-658e57b75afd.png"> NACS Keyfindings from their factbook. Published January 2023
|||
|:--|:--|
|<img src="https://user-images.githubusercontent.com/91097605/218142344-c2e6b518-eac9-4625-bfde-0f2d3bdc4c33.png" width=400 > <br> <br>  Heatmap of convient stores accross US. Convient stores centered around population. Darker indicates higher density, lighter indicates lower desnisty.|<img src="https://user-images.githubusercontent.com/91097605/218147383-16e035a9-c555-431c-9c8b-d9bb70e428ed.png" width=400> <br><br> Heat map of US population distribution. Demonstrating overlap between conienvce stores and population.|

## Sources
NACS: https://www.convenience.org/Research/FactSheets/IndustryStoreCount
Statistica: https://www.statista.com/topics/3869/convenience-stores-in-the-us/#topicOverview
Decreased Attention: https://www.usatoday.com/story/life/health-wellness/2021/12/22/covid-attention-span-exhaustion/8926439002/
Canada Convient Store: https://www.ic.gc.ca/app/scr/app/cis/summary-sommaire/44512
Canada Convient store industry size: https://www.ibisworld.com/canada/market-size/convenience-stores/
