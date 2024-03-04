cd VPC-Subnets
rem Create VPC 1
aws cloudformation create-stack --stack-name VPC1 --template-body file://VPC-Dynamic.yaml --parameters file://parameters/parameters-2pub-2priv.json --capabilities CAPABILITY_AUTO_EXPAND

rem Create VPC 2
aws cloudformation create-stack --stack-name VPC2 --template-body file://VPC-Dynamic.yaml --parameters file://parameters/parameters-0pub-1priv.json --capabilities CAPABILITY_AUTO_EXPAND