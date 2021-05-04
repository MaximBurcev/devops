import boto.ec2
for i in boto.ec2.regions():
    print(i)