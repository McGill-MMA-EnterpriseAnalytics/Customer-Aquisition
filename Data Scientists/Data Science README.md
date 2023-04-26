# <font color=#FF0000>Modeling Summary</font>

## Description

In this project, we tried to segment customers, predict acquisition cost for them, and derive business insights based on the data. 
For customer segmentation, we primarily focused on customers' gender and income but also studied their number of cars, number of children, education level, loyalty club membership, and occupation. <br>

To build our prediction model, we developed models using different algorithms including linear regression, decision tree regressor, random forest, extra tree, AdaBoost, Gradient Boosting, LightGBM, and artificial neural networks. Since it is a regression task, we selected the model with the least RMSE, which is extra tree in our case, and did cross validation for this model. It is worth mentioning that we also experimented with different combininations of our features to address the issue of multi-collinearity while keeping the most possible information in the data.<br>

Also, for the causal inference task, we experimented with 'gender', 'member_card' (which refers to customers' loyalty club membership), and 'media_type' (which refers to the type of media used to acquire the customer) as our treatment. It is worth mentioning that in all the cases the target variable for this task has been 'cost', which refers to the customer acquisition cost (CAC).

## Results
We found that the model producting the best results was the extra tree model.

|Model| MSE|
|:--|:--|
|Base Model|820|
|Linear Model|810|
|Artificial Neural Network|800|
|Decision Tree|700|
|Ada Boost Tree|650|
|LightGBM|400|
|Gradient Boosting|380|
|Random Forest|330|
|Extra Tree|250|

## Segmentation

### Description
The first analysis is bivariate analysis, which involves examining the relationship between two variables. The example given is the relationship between gender and income.
The second type of analysis mentioned is multivariate analysis, which involves examining the relationship between multiple variables. The example given is the relationship between gender, income, and education.
It also contains the concept of controlling for variables in multivariate analysis, which involves holding some variables constant while examining the relationship between others.

### Implications
The implication of discussing these types of analyses is that they are common and useful tools in statistical research. By understanding the different types of analyses that can be conducted, analysts can select the most appropriate method for their research question and data.

### Miscellaneous
- Although total_children and num_children_at_home may appear to be correlated, they actually measure different aspects of a household. Total_children reflects the total number of children in a household, whereas num_children_at_home is based on customer survey responses. For example, it's possible for num_children_at_home to be 2 while total_children is 4, indicating that two children are away from home for some reason, such as relocation for university studies.
