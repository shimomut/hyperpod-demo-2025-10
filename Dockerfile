
FROM 763104351884.dkr.ecr.us-east-1.amazonaws.com/pytorch-training:2.8.0-gpu-py312-cu129-ubuntu22.04-ec2

WORKDIR /workspace

RUN git clone https://github.com/aruncs2005/verl.git && cd verl && pip install -e .

RUN pip install vllm>=0.7.0

RUN pip install datasets

RUN pip install hyperpod-elastic-agent

RUN pip install boto3 botocore tenacity s3torchconnector

RUN pip install amzn-sagemaker-checkpointing