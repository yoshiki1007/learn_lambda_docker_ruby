FROM public.ecr.aws/lambda/ruby:2.7

COPY app/lambda_function.rb ${LAMBDA_TASK_ROOT}

CMD ["lambda_function.lambda_handler"]