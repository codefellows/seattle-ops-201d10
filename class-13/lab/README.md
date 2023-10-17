# Cloud Virtualization With AWS

## Overview

Cloud services allow you to access a virtual machine from anywhere, without consuming precious system resources on your local machine. Today you will spin up your very first Amazon Web Services VM using both the new Lightsail system as well as the Elastic Compute Cloud (EC2).

## Feature Tasks and Requirements

### Part 1: Your First Cloud VM on AWS Lightsail

AWS Lightsail is a new, simplified version of cloud VM hosting designed to reduce the complexity involved in standing up and accessing an AWS VM.

- On [AWS Lightsail](https://aws.amazon.com/lightsail/){:target="_blank"} register for an account.
  - NOTE: Use of AWS may incur charges to your account. Carefully read the [AWS Pricing](https://aws.amazon.com/pricing/){:target="_blank"} and [AWS Free Tier](https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc){:target="_blank"} pages to ensure you understand the billing system prior to using it. If you wish to ensure that no charges are incurred to your AWS account, use only Free-Tier eligible services and delete all VMs in your account at the conclusion of today's lab.
  - IMPORTANT: It is your responsibility to manage any expenses incurred by utilizing AWS.

- Create your first VM using the [AWS Lightsail Tutorial for Linux](https://aws.amazon.com/getting-started/hands-on/launch-a-virtual-machine/){:target="_blank"}.
  - Choice of Linux distribution is up to you. If you're not sure what to select, go with the most recent Ubuntu LTS version.
  - Connect to the Linux terminal.
  - Perform some general Linux terminal operations, such as `touch`, `mkdir`, and `nano`. Include in your submission a screenshot of yourself using the terminal. How does this system differ from your local Ubuntu VM?
  - If you have another computer in your home, log into Lightsail and access the Linux VM. How might the versatility of accessing a cloud VM from anywhere be useful to you as an Ops student?
  - What are the security implications of having a computer system that can be accessed from anywhere?
  - Perform Step 5. Next Steps in the tutorial:
    - Create a static IP address for your instance to keep the same IP address each time you stop and start your Lightsail instance.
    - Create a snapshot of your instance to keep as a backup.
    - Attach a disk to your instance to add more storage space.

- Create a second VM using the [AWS Lightsail Tutorial for Windows Server](https://aws.amazon.com/getting-started/hands-on/launch-windows-vm/){:target="_blank"}.
  - Select a recent version of Windows Server (2019 is fine).
  - Lightsail will take some time to configure your instance.
  - Connect to the Windows Server
    - You will have to use RDP. 
    - The server will need a public IP Address.
    - You can find detailed instructions here: [Connect to your Windows instance using RDP](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/connecting_to_windows_instance.html#connect-rdp){:target="_blank"}.
  - Include in your submission a screenshot of yourself accessing the System Information panel ("View basic information about your computer") on the Windows Server VM.
  - Based on what you see within the VM, is there be any sign that this is an AWS cloud hosted computer and NOT a local on-prem computer?

- What are your general impressions of AWS Lightsail? Do you see yourself using a pay-as-you-go cloud virtualization service moving forward?

### Part 2: AWS EC2

For each task below, include a description of the operation performed and a screenshot where relevant.

- On [AWS EC2](https://aws.amazon.com/ec2/){:target="_blank"} choose and spin up a free tier AMI (pre-made system image) of Windows Server 2016. Follow the tutorial, [Getting Started with Amazon EC2](https://aws.amazon.com/ec2/getting-started/){:target="_blank"}
- Include in your submission screenshots of you accessing the EC2 VM successfully via RDP.

## Wrap-up

If you wish to ensure that no charges are incurred to your AWS account, now is the time to delete your AWS VMs on both Lightsail and EC2.

## Submission Instructions

1. Create a new blank Google Doc.
1. Populate the Google Doc with the contents of your submission as required above.
1. Name the document according to your course code and assignment.
   - i.e. `seattle-ops-201d1: Reading 01` or `seattle-ops-201d1: Lab 04`.
1. Add your name & date at the top of the Google Doc.
1. Share your Google Doc so that "Anyone with the link can view".
1. Paste the link to your Google Doc in the discussion field below and share an observation from your experience in this lab including how long this lab took to complete.
