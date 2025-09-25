#!/bin/bash

# aws ec2 run-instances --image-id ami-09c813fb71547fc4f --instance-type t3.micro --security-group-ids sg-083d903c3fd30a343 --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Test}]' => Which gives all the data of instances but not public ip
# aws ec2 run-instances --image-id ami-09c813fb71547fc4f --instance-type t3.micro --security-group-ids sg-083d903c3fd30a343 --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Test}]' --query 'Instances[0].InstanceId' --output text => Which gives only Instance ID
# aws ec2 describe-instances --instance-ids <instance-id> --query 'Reservations[0].Instances[0].PublicIpAddress' --output text
# aws ec2 run-instances --image-id ami-09c813fb71547fc4f --instance-type t3.micro --security-group-ids sg-083d903c3fd30a343 --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Test}]' --query 'Reservations[0].Instances[0].PrivateIpAddress' --output text

{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-09c813fb71547fc4f",
            "InstanceId": "i-01e863891669e4bbe",
            "InstanceType": "t3.micro",
            "LaunchTime": "2025-09-24T06:41:17+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-1b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-21-12.ec2.internal",
            "PrivateIpAddress": "172.31.21.12",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-057540a36a12a6b97",
            "VpcId": "vpc-04ea71ca44c3a5773",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "201ea100-893c-469f-9b5b-d7c32cc2961c",
            "EbsOptimized": false,
            "EnaSupport": true,
            "Hypervisor": "xen",
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2025-09-24T06:41:17+00:00",
                        "AttachmentId": "eni-attach-02b0f216b047d4197",
                        "DeleteOnTermination": true,
                        "DeviceIndex": 0,
                        "Status": "attaching",
                        "NetworkCardIndex": 0
                    },
                    "Description": "",
                    "Groups": [
                        {
                            "GroupName": "allow-ssh",
                            "GroupId": "sg-083d903c3fd30a343"
                        }
                    ],
                    "Ipv6Addresses": [],
                    "MacAddress": "0a:ff:d9:ee:5f:cb",
                    "NetworkInterfaceId": "eni-0c141b75bb7b9b5b1",
                    "OwnerId": "370260028454",
                    "PrivateDnsName": "ip-172-31-21-12.ec2.internal",
                    "PrivateIpAddress": "172.31.21.12",
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-172-31-21-12.ec2.internal",
                            "PrivateIpAddress": "172.31.21.12"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-057540a36a12a6b97",
                    "VpcId": "vpc-04ea71ca44c3a5773",
                    "InterfaceType": "interface"
                }
            ],
            "RootDeviceName": "/dev/sda1",
            "RootDeviceType": "ebs",
            "SecurityGroups": [
                {
                    "GroupName": "allow-ssh",
                    "GroupId": "sg-083d903c3fd30a343"
                }
            ],
            "SourceDestCheck": true,
            "StateReason": {
                "Code": "pending",
                "Message": "pending"
            },
            "Tags": [
                {
                    "Key": "Name",
                    "Value": "Test"
                }
            ],
            "VirtualizationType": "hvm",
            "CpuOptions": {
                "CoreCount": 1,
                "ThreadsPerCore": 2
            },
            "CapacityReservationSpecification": {
                "CapacityReservationPreference": "open"
            },
            "MetadataOptions": {
                "State": "pending",
                "HttpTokens": "optional",
                "HttpPutResponseHopLimit": 1,
                "HttpEndpoint": "enabled",
                "HttpProtocolIpv6": "disabled",
                "InstanceMetadataTags": "disabled"
            },
            "EnclaveOptions": {
                "Enabled": false
            },
            "BootMode": "uefi-preferred",
            "PrivateDnsNameOptions": {
                "HostnameType": "ip-name",
                "EnableResourceNameDnsARecord": false,
                "EnableResourceNameDnsAAAARecord": false
            },
            "MaintenanceOptions": {
                "AutoRecovery": "default"
            },
            "CurrentInstanceBootMode": "uefi"
        }
    ],
    "OwnerId": "370260028454",
    "ReservationId": "r-051e21e7c3c43bbaf"
}
