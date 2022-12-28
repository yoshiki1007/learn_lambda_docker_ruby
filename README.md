# learn_lambda_docker_ruby
1. git clone したらimage作成
```zsh
docker build -t learn_lambda_docker_ruby .
```
2. ECRを作成する
3. ECRのURLを含めたタグを追加する

- ${ACCOUNTID} にはECRのID
- ${REGION}にはAWSリージョン

```zsh
docker tag learn_lambda_docker_ruby:latest ${ACCOUNTID}.dkr.ecr.${REGION}.amazonaws.com/learn_lambda_docker_ruby:latest
```

3. ECRログイン

```zsh
aws ecr get-login-password --region ap-northeast-1 --profile default | docker login --username AWS --password-stdin 085716657887.dkr.ecr.ap-northeast-1.amazonaws.com
```

4. ECRにプッシュ

```zsh
docker push 085716657887.dkr.ecr.ap-northeast-1.amazonaws.com/learn_lambda_docker_ruby:latest
```

```zsh
aws lambda invoke --function-name docker_test output ; cat output
```
