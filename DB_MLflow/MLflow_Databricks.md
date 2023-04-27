# Databricks Configuration
## Create a cluster "MLflow"
- Create a cluster to intergrate MLflow
<img width="731" alt="Screenshot 2023-04-24 at 2 20 55 PM" src="https://user-images.githubusercontent.com/75922678/234082751-d1b1608e-867e-43d7-8008-538cb62b0129.png">

## Install libraries using PyPI
<img width="595" alt="Screenshot 2023-04-20 at 5 10 35 PM" src="https://user-images.githubusercontent.com/75922678/234082339-504a5265-c6a3-49b2-a301-53e618cb50dc.png">

## Example: Installed libraries
- Not only MLflow, but many different libraries (e.g., AzureML) can be installed according to user's need
<img width="385" alt="Screenshot 2023-04-24 at 2 06 15 PM" src="https://user-images.githubusercontent.com/75922678/234082391-d9c0386f-bb09-4b09-9c86-b0117ef003a3.png">

# Databricks and GitHub Connection

## Access GitHub Repo using PAT (Personal Access Token)
- Set Git provider as GitHub
- Enter PAT from a user's credentials of GitHub
<img width="458" alt="Screenshot 2023-04-21 at 10 20 30 AM" src="https://user-images.githubusercontent.com/75922678/234081913-3c2996c6-4420-485d-ad65-fdb62383ccb0.png">

## GitHub Repo Integration
- Connected to "Customer-Acquisition" Repo, which stores all codes of the project
<img width="301" alt="image" src="https://user-images.githubusercontent.com/75922678/234915707-f8c54a71-6e8d-4e5b-848a-026bc90eeb05.png">

## Example: "Data Scientist" branch in the repo
<img width="295" alt="image" src="https://user-images.githubusercontent.com/75922678/234915349-b857e16a-56db-4045-a6a4-bb099d7ca4ec.png">

# MLflow Experiment

## Create MLflow Experiment Artifact in the Workspace
<img width="250" alt="image" src="https://user-images.githubusercontent.com/75922678/234916001-a69d2ca7-ece2-4b7d-b2cd-a9cc20d88efc.png">

## Multiple Artifacts can be stored in the workspace section
<img width="295" alt="image" src="https://user-images.githubusercontent.com/75922678/234916373-b525376c-d686-45a5-942b-587ebd59b124.png">

## Example: Notebook and Experiment in a workspace "HyperParameterTuning"
<img width="295" alt="image" src="https://user-images.githubusercontent.com/75922678/234916459-73bd67f4-0742-4c05-a624-fe7222361a1d.png">

## Experiment Artifact ID
<img width="702" alt="image" src="https://user-images.githubusercontent.com/75922678/234917573-0efadfad-36b6-41e9-a9da-2c96019103a1.png">

## Run mlflow in a notebook with "experiment_id"
- Result is saved in the Experiment specified by "experiment_id"
<img width="363" alt="image" src="https://user-images.githubusercontent.com/75922678/234917080-2f845af0-96eb-4fa3-8e98-961727dc94fe.png">

## Artifacts store in an experiment
<img width="720" alt="image" src="https://user-images.githubusercontent.com/75922678/234918405-6f3e77d6-a72a-4efa-9952-50c7b2f6c5b0.png">

## Artifacts Table view
- The Experiment keeps track of changes in the model
<img width="860" alt="image" src="https://user-images.githubusercontent.com/75922678/234918705-3dd264b5-e198-4ee8-8c7d-72f067177ecd.png">

## Artifacts Compare view
- Here we can compare multiple artifacts based on defined metrics and parameters
<img width="878" alt="image" src="https://user-images.githubusercontent.com/75922678/234918898-a6dcefa5-f71a-4d77-a836-68b660aa648f.png">
