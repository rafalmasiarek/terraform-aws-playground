# 2nd Exercise


### Create basic VPC 
1) All created servers need to have hostname
2) VPC must create own configuration in all available zones, please use as default `eu-central-1a`, `eu-central-1b`, `eu-central-1c`
3) To all AZs create public and private ip subnets , on public subnet please allow to assign public ip address by default. Make default configuraton with these subnets:

- Public:

| AZ | Subnet        |
|----|---------------|
| A  | 10.0.101.0/24 |
| B  | 10.0.102.0/24 |
| C  | 10.0.103.0/24 |

- Private:

| AZ | Subnet      |
|----|-------------|
| A  | 10.0.1.0/24 |
| B  | 10.0.2.0/24 |
| C  | 10.0.3.0/24 |

4) As cost-saving plan, create ec2 instance (`micro`) as [NatInstance](https://www.kabisa.nl/tech/cost-saving-with-nat-instances/)


```**WARNING**
Single NatInstance is only for developing purposes, on all PROD environement use [AWS NatGateway](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html)
```