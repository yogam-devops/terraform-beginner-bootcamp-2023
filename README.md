# Terraform beginner bootcamp week 0

## New terraform CLI install

The terraform CLI commands in gitpod.yml is outdated so created a new install file in bash and have all the install commands added to it 


[install terraform for Ubuntu linux](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

## Update gitpod.yml

Replaced the section in gitpod.yml with the new bash script created and replace init with before command to ensure the tasks complete as part of workspace restart

[gitpods before and init commands](https://www.gitpod.io/docs/configure/workspaces/tasks)

## Checking the env set

To check the env variables set use


```
env
```

## To set the env varibale globally we need to use gp env

```
gp env PROJECT_ROOT='/workspace/terraform-beginner-bootcamp-2023'

```

## Env file

New env.example file created to show the env variable set



### AWS CLI refactor

Created a seperate bash script for AWS CLI install which will be sourced in the main gitpod.yml

NEVER commit access keys in github

``` sh

gp env AWS_ACCESS_KEY_ID=EXAMPLEACCESSKEY
gp env AWS_SECRET_ACCESS_KEY=EXAMPLESECRETACCESSKEY
gp env AWS_DEFAULT_REGION=us-east-1

```

Once this is set it can be viewed under [user variables for gitpod ](https://gitpod.io/user/variables)

Validation can be run by running the below command

``` sh
aws sts get-caller-identity
```

If it did not reflect immediately, stop and start the gitpod it should be reflected.