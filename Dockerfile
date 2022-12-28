FROM public.ecr.aws/lambda/ruby:2.7
COPY lambda_fanction.rb ./
CMD ["lambda_fanction.lambda_handler"]