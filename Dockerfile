FROM mcr.microsoft.com/azureml/openmpi4.1.0-ubuntu20.04

ENV AZUREML_CONDA_ENVIRONMENT_PATH /azureml-envs/azureml-automl
ENV PATH $AZUREML_CONDA_ENVIRONMENT_PATH/bin:$PATH

# COPY --from=mcr.microsoft.com/azureml/mlflow-ubuntu20.04-py38-cpu-inference:20230306.v3 /var/mlflow_resources/mlflow_score_script.py /var/mlflow_resources/mlflow_score_script.py

# ENV MLFLOW_MODEL_FOLDER="mlflow-model"
# ENV AML_APP_ROOT="/var/mlflow_resources"
# ENV AZUREML_ENTRY_SCRIPT="mlflow_score_script.py"

ENV ENABLE_METADATA=false

# Create conda environment
RUN conda create -p $AZUREML_CONDA_ENVIRONMENT_PATH \
    python=3.8 \
    pip=20.2.4 \
    numpy~=1.21.6 \
    py-cpuinfo=5.0.0 \
    boto3=1.15.18 \
    botocore=1.18.18 \
    joblib=1.2.0 \
    cloudpickle=1.6.0 \
    scikit-learn=0.22.1 \
    pandas~=1.1.5 \
    py-xgboost=1.3.3 \
    holidays=0.10.3 \
    setuptools-git \
    'psutil>5.0.0,<6.0.0' \
    -c conda-forge -c pytorch -c anaconda && \
    conda run -p $AZUREML_CONDA_ENVIRONMENT_PATH && \
    conda clean -a -y

# Install pip dependencies
RUN pip install  'azureml-core==1.49.0' \
                'azureml-mlflow==1.49.0' \
                'azureml-pipeline-core==1.49.0' \
                'azureml-telemetry==1.49.0' \
                'azureml-interpret==1.49.0' \
                'azureml-responsibleai==1.49.0' \
                'azureml-automl-core==1.49.1.post2' \
                'azureml-automl-runtime==1.49.1' \
                'azureml-train-automl-client==1.49.0.post1' \
                'azureml-train-automl-runtime==1.49.1' \
                'azureml-dataset-runtime==1.49.0' \
                'azureml-defaults==1.49.0' \
                'inference-schema' \
                'fbprophet==0.7.1' \
                'pystan==2.19.1.1' \
                'mltable>=1.0.0'
