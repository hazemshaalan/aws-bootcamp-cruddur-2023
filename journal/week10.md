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

