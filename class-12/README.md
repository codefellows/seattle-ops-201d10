# Class 12

## Class Outline

1. Warm-Up
1. Review
1. Lecture
1. Demo
1. Lab

## Overview

Many computing devices that were traditionally physical hardware appliances have since been virtualized into portable files, much like those you've worked with such as .iso and .ova files. Additionally, open source software solutions have gained tremendous popularity due to their versatility, transparency, and accessibility. Thus far, you've used Ubuntu Linux, an open source OS. Our next open source software we'll use is pfSense, a router/firewall that we can deploy to the lab computer to learn about networking.

## How does this topic fit?

**Where we've been**:
In the previous class, we were looking at what happens when data gets damaged, and how we can use tools that repair data. We also practiced data recovery and secure erasure.

**What are we focusing on today**:
Today, we'll be deploying a pfSense router/firewall as a VM in VirtualBox. This will open up future opportunities to practice computer networking using the lab kit PC.

**Where we're headed**:
Next class will delve into how computer technicians detect malware, restore operations, and recover any damaged data.

## Virtualizing a Router with pfSense

### Why
- Virtualized routers and firewalls, such as pfSense, can be run on commodity hardware or within virtual environments, eliminating the need for dedicated hardware devices. This reduces costs associated with purchasing and maintaining physical appliances.
- Virtualized solutions allow for easy scalability by adding resources like CPU, memory, and storage as needed. This flexibility is especially valuable in dynamic or growing network environments.
- pfSense enables you to segment your network into distinct zones, isolating different departments, services, or user groups. This enhances security by limiting the potential impact of breaches or unauthorized access.
- pfSense offers advanced firewall capabilities, including stateful packet inspection, intrusion detection/prevention, and deep packet inspection. It allows for fine-grained control over traffic and can mitigate various security threats.
- Virtualized routers like pfSense often come with built-in VPN capabilities, allowing secure remote access for users or connecting multiple branch offices securely over the internet.
- pfSense enables you to prioritize certain types of network traffic, ensuring critical applications receive the necessary bandwidth and minimizing the impact of less important traffic.
- Virtual routers can distribute network traffic across multiple connections or paths, balancing the load and providing redundancy in case of connection failures.
- Using a virtualized solution like pfSense allows for centralized management of network policies and configurations, making it easier to enforce consistent security practices and network rules.
- Virtualized routers and firewalls provide a safe environment for testing and development of network configurations without affecting the production network.
- Using an open-source solution like pfSense reduces dependence on proprietary hardware or software vendors, giving you more control over your network infrastructure.

### What
- _______ is a networking device that forwards data packets between computer networks. It determines the best path for data to travel between different networks.
- _______ is a network security device that monitors and controls incoming and outgoing network traffic, based on predetermined security rules.
- _______ is an open-source firewall/router software distribution based on FreeBSD, offering advanced networking and security features.
- _______ is dividing a network into smaller subnetworks or segments to improve security, performance, and manageability.
- _______ is a system that monitors network traffic for suspicious activities or patterns that may indicate unauthorized access or attacks.
- _______ is a more advanced version of an IDS that not only detects suspicious activities but also takes proactive measures to prevent them.
- _______ is a technology that examines the contents of data packets to identify the type of traffic and enforce security policies.
- _______ is a secure communication tunnel that allows remote users to access a private network over the internet, enhancing privacy and security.
- _______ is distributing network traffic across multiple servers or connections to optimize resource utilization and improve performance.
- _______ is the automatic switching to a backup network or system in case the primary one becomes unavailable, ensuring continuous availability.
- _______ is a set of techniques to prioritize and manage network traffic, ensuring that critical applications receive sufficient bandwidth and resources.
- _______ is a separate network zone that lies between a trusted internal network and an untrusted external network, often used to host public-facing services.
- _______ is redirecting incoming network traffic from one port to another, allowing external users to access specific services hosted within a private network.
- _______ is a technique that allows multiple devices within a private network to share a single public IP address, providing an added layer of security.
- _______ is a logical division of an IP network into smaller segments, used to manage and control network traffic.
- _______ is the process of examining data packets and making decisions about whether to allow or block them based on predefined rules.
- _______ is a firewall that enforces security policies based on a set of rules specifying what types of traffic are allowed or denied.

### How
- Deploy pfSense as a VM in VirtualBox
- Connect a Windows 10 VM to pfSense as its primary gateway, DNS, and DHCP server
- Complete the setup wizard from the Windows 10 VM's web browser
- Diagram your network topology in draw.io

<!-- ### Experimentation and Discovery Ideas
  - Provide some ideas here for how the instructor can be interactive with the students
  - Can this be built using the Socratic method?
  - Can we use breakout or small group sessions -->

## Learning Objectives

### Students will be able to

#### Describe and Define

- pfSense
- Hubs
- Routers
- Switches
- Firewalls
- DHCP
- DNS

#### Execute

- Deploy pfSense to a VirtualBox VM from the .iso file

## Helpful Resources

- [Download pfSense](https://www.pfsense.org/download/){:target="blank"}
- [How to install pfSense on VirtualBox or Vmware player](https://www.how2shout.com/how-to/install-pfsense-VirtualBox-linux-vmware-player.html){:target="blank"}

## Notes

### pfSense Install Guide

**Download pfSense iso:**
  - You'll also need to extract it!
    - "Open with Archive Manager"
    - Accept defaults

**VM Settings:**
  - FreeBSD 64-bit
  - System / Pointing Device: USB Tablet
    - This should prevent mouse capture
- Under "Storage", add the downloaded pfSense ISO as a new Optical Drive.
  - Network:
    - Adapter 1: Bridged (NAT is also fine)
    - Adapter 2: Internal Network

**Installation:**
  - Accept all defaults
  - Use <space> to select the `ada0 VBOX HARDDISK` drive
  - Reboot
  - Turn the machine off to remove the installation ISO from the Optical Drive in the VM Network Settings.
  - Restart the machine

**Configuration:**
  - Set interface IP address
    - Choose LAN
    - Enter LAN IP (you can change it or keep it the same)
    - Subnet bit count: 24
    - Do not need upstream gateway address
    - No IPv6
    - Enable DHCP
      - Start address: * . * . * .100
      - End address: * . * . * .200
    - Revert web configurator to HTTP: yes

**Finish**
  - Export OVA backup
  - Take a snapshot
  - Connect a Windows VM to the same Internal Network in order to access the pfSense Web Configurator
    - Username: admin
    - password: pfsense

### OSI Model

The OSI (Open Systems Interconnection) model is a conceptual framework that standardizes the functions of a communication or network system into seven distinct layers. It was developed by the International Organization for Standardization (ISO) to guide the design, understanding, and interoperability of networking protocols and systems. Each layer of the OSI model has a specific role and responsibility in the process of transmitting data between devices on a network.

The OSI model serves as a foundation for understanding networking concepts and protocols. While real-world networking protocols may not adhere exactly to the OSI layers, the model's structure provides a valuable framework for categorizing and comprehending the complexities of network communication.

**Layer 1: Physical Layer**

The Physical Layer deals with the actual physical transmission of data over the network medium. It encompasses aspects like electrical signals, cables, connectors, and the physical characteristics of devices. It defines the hardware-related aspects of networking, such as transmission rates, voltage levels, and signal modulation.

**Layer 2: Data Link Layer**

The Data Link Layer provides error detection and correction within the physical layer. It's responsible for establishing a reliable link between directly connected nodes, ensuring that data is properly framed, addressed, and transmitted. This layer includes sublayers: the Logical Link Control (LLC) sublayer handles flow control and error checking, while the Media Access Control (MAC) sublayer manages access to the physical medium.

**Layer 3: Network Layer**

The Network Layer is responsible for routing data packets between devices in different networks. It handles logical addressing, subnetting, and routing decisions to determine the optimal path for data transmission. IP addresses operate at this layer, and routers are key devices that operate here.

**Layer 4: Transport Layer**

The Transport Layer ensures end-to-end communication reliability and manages data segmentation, reassembly, flow control, and error correction. It offers two primary protocols: Transmission Control Protocol (TCP), which provides reliable and connection-oriented communication, and User Datagram Protocol (UDP), which offers faster but less reliable communication.

**Layer 5: Session Layer**

The Session Layer manages the establishment, maintenance, and termination of communication sessions between devices. It also handles synchronization and data checkpointing, ensuring that if a session is disrupted, it can be resumed without data loss.

**Layer 6: Presentation Layer**

The Presentation Layer deals with data translation, encryption, compression, and formatting to ensure that data sent by one application can be properly understood by another, regardless of differences in data formats or encoding.

**Layer 7: Application Layer**

The Application Layer is the topmost layer that interacts directly with end-user applications. It provides a platform for applications to communicate with each other over the network. Common application-layer protocols include HTTP, SMTP, FTP, and more.




