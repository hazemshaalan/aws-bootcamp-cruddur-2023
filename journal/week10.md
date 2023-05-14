# Week 10 — CloudFormation
# Networking layer 
- https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html
- https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-internetgateway.html
- https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-routetable.html
- https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html
- https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html
- 

- Created the template.yaml file on the cfn dir 
- ![cfn file](https://user-images.githubusercontent.com/114304965/233861347-1bfd587d-eafe-4deb-a21f-7b8da6de0a41.PNG)

- ``` pip install cfn-lint /  cargo install cfn-guard ``` to validate the template 
- Added cfn-lint to gitpod.yml 
- ![cfn lint](https://user-images.githubusercontent.com/114304965/233861585-e656d4dc-d8de-45bd-ae9b-f72e7cb39db8.PNG)


-  ```export CFN_BUCKET="cfn-artifacts-hs"```
-  ```gp env CFN_BUCKET="cfn-artifacts-hs"```

- go to this webssite : https://cidr.xyz/ for cidr blocks and IP addresses ranges 

- Created the template for the Networking layer 
- I ran into a small issue with the yaml.customTags and added the new tags in the settings.json in gitpod 
![1](https://user-images.githubusercontent.com/114304965/233963055-a3470755-48aa-41d5-a330-5ccb6708b49f.PNG)
![2-3](https://user-images.githubusercontent.com/114304965/233963068-560c8752-0faf-48d6-9227-9708cfbd6ce1.PNG)
![4](https://user-images.githubusercontent.com/114304965/233963090-7f34dc54-2e8a-4e0b-952d-5a1eec1aea15.PNG)


- then deployed the template for the stack  to be created on AWS 
![stack created](https://user-images.githubusercontent.com/114304965/233963370-87d085d0-8239-4544-83c2-e760c79c935a.PNG)


- executed the change set and the resources were created 
![resorces](https://user-images.githubusercontent.com/114304965/233962700-457ab663-fb83-4985-ab54-3f1ce64fec2f.PNG)

# cluster layer
-created change set for cluster layer

![Crudcluster created](https://github.com/hazemshaalan/aws-bootcamp-cruddur-2023/assets/114304965/2205d75b-6374-4402-b4b3-222eb953472e)
![Clusetr layer created 1](https://github.com/hazemshaalan/aws-bootcamp-cruddur-2023/assets/114304965/345ee272-407b-4ea1-8602-900935bc2bc9)

# Db layer created before service because servce was failing 

![crudDB](https://github.com/hazemshaalan/aws-bootcamp-cruddur-2023/assets/114304965/b1a100be-1ee0-45f6-a894-a421862b78a6)
![CtudderInstance](https://github.com/hazemshaalan/aws-bootcamp-cruddur-2023/assets/114304965/90514bc4-d7dd-4700-be66-5025595093b5)

# Service Layer 
-   We hardcoded th port 4567 on the target healthcheck to make it a healty one
![Healtytarget](https://github.com/hazemshaalan/aws-bootcamp-cruddur-2023/assets/114304965/46a88847-6583-4318-86a0-c6d753892880)



![Healthytask](https://github.com/hazemshaalan/aws-bootcamp-cruddur-2023/assets/114304965/d9072f43-051c-448a-824b-f8bc47267aa3)
![API Healtcheck working](https://github.com/hazemshaalan/aws-bootcamp-cruddur-2023/assets/114304965/1ec1d3a7-4651-44ad-bb6e-281fb78fcc8e)



# DynamoDB

![CruDDup](https://github.com/hazemshaalan/aws-bootcamp-cruddur-2023/assets/114304965/e0ecffa0-dde6-4c8d-9608-310c30b4cbe9)

![Cruddb resource](https://github.com/hazemshaalan/aws-bootcamp-cruddur-2023/assets/114304965/a491d936-84d6-46c2-ad61-3d153d50dd0f)

