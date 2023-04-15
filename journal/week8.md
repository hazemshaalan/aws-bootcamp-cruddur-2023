
## Week 8 serverless 

- From the lecture we created the our 1st stack using the AWS CDK
```
createBucket(bucketName:string):s3.IBucket{
    const bucket = new s3.Bucket(this,'ThumbingBucket',{
      bucketName:bucketName,removalPolicy:cdk.RemovalPolicy.DESTROY
    });
    return bucket;
  }
  ```

- We added a lambda function as below and we defined the environment variables 
```
 createLambda(folderIntput: string, folderOutput: string, functionPath: string, bucketName: string): lambda.IFunction {
    const logicalName = 'ThumbLambda';
    const code = lambda.Code.fromAsset(functionPath)
    const lambdaFunction = new lambda.Function(this, logicalName, {
      runtime: lambda.Runtime.NODEJS_18_X,
      handler: 'index.handler',
      code: code,
      environment: {
        DEST_BUCKET_NAME: bucketName,
        FOLDER_INPUT: folderIntput,
        FOLDER_OUTPUT: folderOutput,
        PROCESS_WIDTH: '512',
        PROCESS_HEIGHT: '512'
      }
      ```
```

- We added another lambda to be triggered once a an avatar photo is uploaded 
```
 createS3NotifyToLambda(prefix: string, lambda: lambda.IFunction, bucket: s3.IBucket): void {
    const destination = new s3n.LambdaDestination(lambda);
      bucket.addEventNotification(s3.EventType.OBJECT_CREATED_PUT,
      destination,
      {prefix: prefix}
    )
  }
``````

- we added a function to import the from existing bucket instead of creating one Assets bucket 
```

  importBucket(bucketName: string): s3.IBucket {
    const bucket = s3.Bucket.fromBucketName(this,"AssetsBucket",bucketName);
    return bucket;
  }
``````
- we created the ASSETS bucket manually through the console because we needed it to presist in case we destroyed the CDK stack 

- We created an Upload and clear for the S3 bucket and the upload should trigger the  Lambda function  
![S3 successfully triggered a Lmabda](https://user-images.githubusercontent.com/114304965/232208653-67a97964-f3e4-4483-8840-ac8497756f51.PNG)

- Then we  checked our Cloudwatcg logs and it's Logging 
- ![Cloudwatch log streams for Lambda](https://user-images.githubusercontent.com/114304965/232208721-d9f54227-b2b9-45ec-89d3-0fa4c0dd3230.PNG)

- We added a bucket access policy 
```
createPolicyBucketAccess(bucketArn: string){
    const s3ReadWritePolicy = new iam.PolicyStatement({
      actions: [
        's3:GetObject',
        's3:PutObject',
      ],
      resources: [
        `${bucketArn}/*`,
      ]
    });
    return s3ReadWritePolicy;
  }
  
  lambda.addToRolePolicy(s3ReadWritePolicy);

``````
- I ran into this issue 
![sharp error](https://user-images.githubusercontent.com/114304965/232211282-3143012c-796c-429d-a571-324d00739918.PNG)
but the resolve was:
```
cd workspace/aws-bootcamp-cruddur-2023/aws/lambdas/process-images
npm install sharp
``````
- Also we ran into this issue where the processed photo is showing as jpg and downloading as png 
![jpg instead of png](https://user-images.githubusercontent.com/114304965/232213109-e4f8447a-f5db-41cc-b848-caf3a363e01d.PNG)

but we change the code in the index and image processing file to generate a jpeg image 

- We created SNS topic 
```
import * as sns from 'aws-cdk-lib/aws-sns';

const snsTopic = this.createSnsTopic(topicName)

createSnsTopic(topicName: string): sns.ITopic{
  const logicalName = "Topic";
  const snsTopic = new sns.Topic(this, logicalName, {
    topicName: topicName
  });
  return snsTopic;
}
```




