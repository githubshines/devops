aws cloudformation create-stack --stack-name cfn-demo-iam --template-body file://cfn-templates/code_commit_iam.yaml --capabilities CAPABILITY_IAM
aws cloudformation create-stack --stack-name cfn-demo-code-commit --template-body file://cfn-templates/code_commit.yaml --capabilities CAPABILITY_IAM