#!/bin/bash

BUCKET_NAME=mlops-data-bucket
JOB_NAME=job_4

gcloud ai-platform jobs submit training ${JOB_NAME} \
    --region=europe-west3 \
    --master-image-uri=gcr.io/mlops-sentiment-analysis/mlops-sentiment-analysis-image:latest \
    --scale-tier=CUSTOM \
    --master-machine-type=n1-standard-8 \
    --master-accelerator=type=nvidia-tesla-k80,count=1 \