

## Cloud Process

Cloud infrastructure allows for easier scalability of models which helped us scale upward as we expand into Canada

### Azure

As our organization recognizes the power of data science and machine learning, we can improve efficiency, enhance customer experiences, and predict costs. To achieve these goals in business-critical use cases, we need a consistent and reliable pattern for:

* Tracking experiments
* Reproducing results
* Deploying machine learning models into production.

<img src="https://github.com/McGill-MMA-EnterpriseAnalytics/Customer-Aquisition/blob/bcaca03ead7c4d899d3a31b5203407a223eecfe1/Azurepipeline.png" alt="Pipeline" width="80%">



**This Cloud Process:**
Azure outlines a solution for a consistent, reliable machine learning framework. When the best model is ready for production, Azure Databricks deploys that model to the MLflow model repository. The storage layer Delta Lake and the machine learning platform MLflow also play significant roles.


<img src="https://github.com/McGill-MMA-EnterpriseAnalytics/Customer-Aquisition/blob/e24e1d996b296950d0fa683d47981f340c45d5ec/Azurearch.png" alt="Architecture" width="80%">

Typically, the workflow of training models is defined by a Pipeline which captures complex job dependencies.

Job manages our training job, logs parameters, and metrics

We can define our job using YAML files and execute our job using Azure Machine Learning CLI v2 on compute cluster. 

Finally, an Environment defines Python packages, environment variables, and Docker settings for training model and scoring model.

We can use GitHub Actions to trigger model training job easily via Azure ML CLI v2. Typical cases of triggering model training job every time code in GitHub is changed by pull request or commit or on a schedule to train model using new data.


### MLFlow with Databricks

- Central repository to log and track experiments/results/artifacts.
- Logs metrics, parameters, code versions.
- Supports multiple languages.
- Enables packaging and sharing code with dependencies.
- Simplifies reproducing and running code in different environments.
- Supports running code in various ways.
- Provides a standard format to package and deploy models.
- Supports various machine learning frameworks and libraries.
- Allows you to deploy models to production environments easily.

<img src="https://github.com/McGill-MMA-EnterpriseAnalytics/Customer-Aquisition/blob/bcaca03ead7c4d899d3a31b5203407a223eecfe1/mlflow1_2.png" alt="Architecture" width="50%">


![Architecture](https://github.com/McGill-MMA-EnterpriseAnalytics/Customer-Aquisition/blob/bcaca03ead7c4d899d3a31b5203407a223eecfe1/mlflow3_7.png)

