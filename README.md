# learn_lambda_docker_ruby
1. git clone => image 作成
```zsh
docker build -t learn_lambda_docker_ruby .
```
2. ECR 作成
3. タグを追加、image 作成

- ${ACCOUNTID} にはECRのID
- ${REGION}にはAWSリージョン

```zsh
docker tag learn_lambda_docker_ruby:latest ${ACCOUNTID}.dkr.ecr.${REGION}.amazonaws.com/learn_lambda_docker_ruby:latest
```

3. ECRログイン

```zsh
aws ecr get-login-password --region ${REGION} --profile ${AWSPROFILE} | docker login --username AWS --password-stdin ${ACCOUNTID}.dkr.ecr.${REGION}.amazonaws.com
```

4. ECRにプッシュ

```zsh
docker push ${ACCOUNTID}.dkr.ecr.${REGION}.amazonaws.com/learn_lambda_docker_ruby:latest
```

5. 実行
```zsh
aws lambda invoke --function-name docker_test output ; cat output
```
