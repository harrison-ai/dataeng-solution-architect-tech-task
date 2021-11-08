# Data Engineering Solutions Architect Tech Task

## Question One

Harrison.ai has an S3 bucket in their own AWS account named `harrison-ai-landing`  A business partner named annalise.ai is required to copy data from an S3 bucket in their own AWS account into the `harrison-ai-landing` bucket providing harrison.ai with complete ownership of the data.  The Terraform templates that were used to create the harrison-ai-landing bucket are available in this repo.

The S3 bucket in annalise.ai was created manually in the AWS Console and already contains all the data ready to be copied.  It is configured as follows:
- Name: annalise-ai-datalake
- No versioning
- Private acl
- AES256 encryption


You are required to:


### Instructions:

- Generate the Terraform templates to import the annalise.ai into Terraform in order to manage it as IaC, including any suggested configuration improvements.
- Detail how to import the bucket into Terraform
- Generate the Terraform templates for any associated resources required to execute the data copy.
- Modify the supplied terraform templates if required
- Use Git version control and commit your solution to a Git repository that we can access. (Github, Bitbucket or Gitlab are the obvious choices)
- Please include a README, citing any third-party code, tutorials or documentation you have used.  If your solution includes any unusual deployment steps, please note them in your README file

## Question Two

Provide a script that will list all objects in an S3 bucket and place a message on an SQS queue for each object in the bucket.  The SQS message format should be as follows:

```
{'bucket:' 'my-s3-bucket', 'key': 'my-object'}
```

The naming format of all objects in the bucket is as follows:

```
<sha256 hash digest>.ext
```

e.g:

```
f2ca1bb6c7e907d06dafe4687e579fce76b37e4e93b7605022da52e6ccc26fd2.ext
```

Additionally, describe how you would:

- Speed up the bucket listing process for very large buckets
- Make the process idempotent

## Question Three (for discussion during the interview)

**This question will be asked and discussed during the interview**.  It is provided here to provide ample
time for any background reading or research that may be required.

You have an S3 bucket that contains 3 billion objects with an average size of 100KB, in the STANDARD Storage Class.  You are tasked with moving all objects in the bucket to the GLACIER Storage Class.  Describe how you would achieve this, providing justifications for the design decisions you made.
