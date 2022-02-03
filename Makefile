build:
	echo "npm install"
	echo "npm test"

deploy-aws: build
	echo 'aws elasticbeanstalk create-application-version --application-name MyApp --version-label v1 --description MyAppv1 --source-bundle S3Bucket="my-bucket",S3Key="sample.war" --auto-create-application'

deploy-azure: build
	echo 'aaz webapp deployment source config-local-git --name <your_app_name> --resource-group <resource_group_name>'