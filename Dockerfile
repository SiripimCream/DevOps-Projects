FROM public.ecr.aws/lambda/python:3.10
COPY main.py ${LAMBDA_TASK_ROOT}
RUN pip install fastapi mangum boto3
CMD [ "main.app" ]
