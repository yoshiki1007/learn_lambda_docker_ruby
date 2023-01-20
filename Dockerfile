FROM amazon/aws-lambda-ruby:latest

COPY app.rb ${LAMBDA_TASK_ROOT}

CMD [ "app.handler" ]