# Class 13

## Class Outline

1. Warm-Up
1. Review
1. Lecture
1. Demo
1. Lab

## Overview

Today you will learn how virtual machines (VMs) can be hosted and configured in the cloud using Amazon Web Services (AWS) and its Elastic Compute Cloud (EC2).

## How does this topic fit?

**Where we've been**:
In the previous class, we were deploying a pfSense router/firewall as a VM in VirtualBox, opening up future opportunities to practice computer networking using the lab kit PC.

**What are we focusing on today**:
Today we will delve into cloud computing on AWS.

**Where we're headed**:
In the next class, we'll be discussing how computer technicians detect malware, restore operations, and recover any damaged data.

## Cloud Virtualization with AWS

### Why
- AWS hads established itself as a dominant player in the cloud market with a wide range of services and a substantial customer base, including startups, enterprises, and governments. It is one of the leading cloud service providers and is the most requested skill on technical job listings.
- Cloud virtualization allows you to easily scale up or down your resources based on demand. This elasticity enables you to meet changing requirements without the need for significant upfront investments in hardware.
- Traditional IT infrastructure often involves high initial costs for hardware and ongoing expenses for maintenance and upgrades. Cloud virtualization offers a pay-as-you-go model, where you only pay for the resources you use, leading to potential cost savings.
- Cloud virtualization optimizes resource utilization. Multiple virtual machines (VMs) can be run on a single physical server, maximizing hardware efficiency and reducing wastage.
- Setting up new servers and resources in a physical environment can be time-consuming. With cloud virtualization, you can provision new instances within minutes, speeding up deployment and development cycles.
- Cloud services like AWS provide data centers in various regions across the world. This enables you to serve your applications and content to a global audience with reduced latency.
- Cloud providers offer tools and services that make it easier to implement redundancy and high availability strategies. This helps ensure your applications remain accessible even in the event of hardware failures or other disruptions.
- Cloud virtualization allows you to create backups, snapshots, and replicas of your data and applications, making disaster recovery planning more manageable and reliable.
- While cloud security is a shared responsibility between the provider and the user, cloud platforms often offer advanced security features, encryption, and compliance certifications that can enhance the overall security posture of your applications and data.
- Cloud environments provide a platform for rapid experimentation and innovation. Developers can quickly test new ideas without the constraints of physical hardware limitations.
- Cloud platforms enable teams to collaborate remotely on projects, sharing resources, data, and applications in real time.

### What
- _______ is the delivery of computing services (e.g., storage, processing power, networking) over the internet, allowing users to access and use resources on-demand without the need for local hardware.
- _______ is a software layer that enables the creation and management of multiple virtual machines on a single physical host, providing isolation and resource allocation.
- _______ is a term often used in cloud computing to refer to a virtual server or a specific running VM.
- _______ is the ability of a cloud system to automatically scale resources up or down based on demand, ensuring optimal performance while minimizing costs.
- _______ is a pricing model in which users are charged only for the resources they consume, promoting cost efficiency and flexibility.
- Cloud providers organize their data centers into regions, each containing multiple _______. _______ are isolated data centers designed for high availability and fault tolerance.
- _______ is the setup of connections between virtual and physical resources, including virtual networks, subnets, load balancers, and firewalls.
- _______ is a system that manages user identities and their permissions to access resources within a cloud environment.
- _______ is a set of protocols and tools that allow different software applications to communicate and interact with each other.
- _______ is a set of practices that combine development (Dev) and IT operations (Ops) to streamline and automate the software delivery process.
- _______ is a feature that automatically adjusts the number of resources allocated to an application based on traffic or other predefined criteria.

### How
- Create two cloud VMs on AWS Lightsail with RDP connectivity
- Create an AWS EC2 with RDP connectivity

<!-- ### Experimentation and Discovery Ideas
  - Provide some ideas here for how the instructor can be interactive with the students
  - Can this be built using the Socratic method?
  - Can we use breakout or small group sessions -->

## Learning Objectives

### Students will be able to

#### Describe and Define

- Cloud
- Amazon Web Services (AWS)
- AWS Lightsail
- AWS Elastic Computer Cloud (EC2)
- Virtual Machine Image (VMI)
- Cloud IaaS service delivery (costs, tools, operations)

#### Execute

- Create and configure a virtual machine on a cloud infrastructure-as-a-service (IaaS) platform
- Connect to and work on a virtual machine on a cloud IaaS platform
- Establish SSH (Secure Shell) connectivity to a Linux-based system
- Operate a Linux-based system via SSH session

## Helpful Resources

- [Pizza as a Service](https://www.paulkerrison.co.uk/random/pizza-as-a-service-2-0){:target="blank"}
- [AWS Architecture Blog: Compute Abstractions on AWS: A Visual Story](https://aws.amazon.com/blogs/architecture/compute-abstractions-on-aws-a-visual-story/){:target="blank"}
- [ICANN](https://www.icann.org/){:target="blank"}

## Notes

### "Infrastructure as ____"

The concept of "Infrastructure as ____" has led to the development of various related terms and practices that focus on automating and managing infrastructure through code. Here are a few "Infrastructure as ____" terms that you might come across:

**Infrastructure as Code (IaC)**: The practice of managing and provisioning infrastructure using code and automation tools. This involves defining infrastructure components such as servers, networks, and storage in a declarative manner.

**Infrastructure as a Service (IaaS)**: A cloud computing model where cloud providers offer virtualized computing resources over the internet. Users can rent virtual machines, storage, and networking components to build their own infrastructure.

**Platform as a Service (PaaS)**: A cloud computing model where cloud providers offer a platform that includes infrastructure components, development tools, and runtime environments. PaaS allows developers to focus on building and deploying applications without worrying about managing the underlying infrastructure.

These terms reflect the different layers of abstraction and services offered by cloud providers, allowing users to leverage cloud resources for specific infrastructure needs without managing the intricacies of the underlying hardware and software components. Keep in mind that the cloud computing landscape is dynamic, and new service models may emerge or change over time.
