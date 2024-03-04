rem Create Peering
aws cloudformation create-stack --stack-name PeeringVPC1-VPC2-3 --template-body file://VPC-peering.yaml