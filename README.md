# devops3-Terraform-RMQ-AWS

# set up

1- copy your ~/.aws/credentials and ~/.aws/config files to /var/lib/jenkins/.aws/ folder
    and execute sudo chown jenkins:jenkins /var/lib/jenkins/.aws/*

2- create an ec2 key pair and store it in /var/lib/jenkins/.ssh
    and execute:
        sudo chmod 400 /var/lib/jenkins/.ssh/< YOUR KEY NAME>.pem
        sudo chown jenkins:jenkins /var/lib/jenkins/.ssh/< YOUR KEY NAME>.pem

3- generate and configure an SSH key for github

4- start jenkins and install CloudBees AWS Credentials plugin

5- now navigate back to 'Manage Jenkins' > 'Manage Credentials'.
    click on Add Credential and select SSH Username with Private Key
    and store your github keys

6- add another credential and this time select "AWS Credentials". Enter your Access Key and Secret key from your ~/.aws/credentials file and give the Id the IAM username for reference.

7- navigate back to manage jenkins > manage users create an api token

8- replace blank values and values between $ { } symbols (delete the $ { } symbols also) in this files:
    - ansible\rmq\rmq_playbook.yml
    - terraform\rmq\main.tf
    - ansible\config\aws_ec2.yml
    - ansible\config\group_vars\tag_group_rmq.yaml

9- copy ansible\config content inside /etc/ansible/ folder

10- import each jenkin job from folder jenkins/jobs/
    replace github urls and RabbitMQ_Configuration job auth token (also in RabbitMQ_Terraform_Build shell command) if nedeed
