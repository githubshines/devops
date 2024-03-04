rmdir cfn-demo-repo /s
echo "Did you Manually configure the 'HTTPS Git credentials for AWS CodeCommit' feature for IAM User for code commit using the AWS Management Console"
pause
git clone https://git-codecommit.us-east-2.amazonaws.com/v1/repos/cfn-demo-repo
cd cfn-demo-repo
xcopy ..\data .\data
xcopy ..\cfn-templates .\cfn-templates
xcopy ..\*.yaml .
xcopy ..\*.yml .
xcopy ..\*.json .


git add -A
git commit -m "Initial commit"
git push

aws cloudformation create-stack --stack-name cfn-demo-code-pipeline --template-body file://cfn-templates/code_pipeline.yaml --capabilities CAPABILITY_IAM
