rem Create API Gateway and Lambda
aws cloudformation create-stack --stack-name APIGW-Lambda --template-body file://api-gw.yaml --capabilities CAPABILITY_IAM