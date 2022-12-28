# learn_lambda_docker_ruby

image 作成

```zsh
docker build -t learn_lambda_docker_ruby .
```

タグをつけて image 生成

```zsh
docker tag learn_lambda_docker_ruby:latest ${ACCOUNTID}.dkr.ecr.${REGION}.amazonaws.com/learn_lambda_docker_ruby:latest
```

ECR ログイン

```zsh
aws ecr get-login-password  --profile ${AWSPROFILE} | docker login --username AWS --password-stdin ${ACCOUNTID}.dkr.ecr.${REGION}.amazonaws.com
```

ECR プッシュ

```zsh
docker push ${ACCOUNTID}.dkr.ecr.${REGION}.amazonaws.com/learn_lambda_docker_ruby:latest
```

Lambda 実行

```zsh
aws lambda invoke --function-name docker_test output ; cat output
```
