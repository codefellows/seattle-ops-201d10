# Virtualizing a Router with pfSense

## Overview

Many computing devices that were traditionally physical hardware appliances have since been virtualized into portable files, much like those you've worked with such as .iso and .ova files. Additionally, open source software solutions have gained tremendous popularity due to their versatility, transparency, and accessibility. Thus far, you've used Ubuntu Linux, an open source OS. Our next open source software we'll use is pfSense, a router/firewall that we can deploy to the lab computer to learn about networking.

## Scenario

A member of engineering running Windows 10 needs you to apply a DHCP reservation for his computer, which is hosting a proprietary application that teammates will access.

## Objectives

- Deploy pfSense as a VM in VirtualBox
- Connect a Windows 10 VM to pfSense as its primary gateway, DNS, and DHCP server
- Complete the setup wizard from the Windows 10 VM's web browser
- Diagram your network topology in draw.io

## Resources

- [Download pfSense](https://www.pfsense.org/download/)
- [How to install pfSense on VirtualBox or Vmware player](https://www.how2shout.com/how-to/install-pfsense-VirtualBox-linux-vmware-player.html)

## Tasks

### Part 1: Staging & Deploying pfSense

While for most labs in the Ops program you'll download a premade .ova file, in today's lab you will create a pfSense VM in VirtualBox using the pfSense .iso file. This will give you hands-on experience in deploying virtual network appliances, a task you'll be engaged in heavily during Ops 301.

- First, [download the pfSense .iso file](https://www.pfsense.org/download/).
- Create a new VM in VirtualBox and insert the pfSense .iso file. Boot into the installer and install pfSense.
- Complete the pfSense installation.
- Export your working pfSense VM as a .ova file.
- Take a snapshot of the working baseline image. 

> Make this step a habit anytime you deploy a new system from scratch on a virtualization platform. 

### Part 2: Make a VirtualBox LAN

pfSense can entirely replace the built-in router functions of VirtualBox, but to do this you'll need to carefully configure its settings.
- Clone a new Windows 10 VM and name it ops201-class12.
- Connect the Windows 10 VM to pfSense as its primary gateway.
- Have pfSense assign the Windows 10 VM a reserved IP.

> Reserved IP addresses help keep the IP address of servers from moving around. We last performed this operation on a Linksys WRT54G router.

- Complete the installation wizard on pfSense's web portal.
- Verify your Windows 10 VM is receiving an IP address from pfSense and is using pfSense as its primary gateway. Include a screen capture of this.

### Part 3: Compose a Network Topology

Draw a simple network topology in draw.io of your configuration, indicating the device name and IP address. Elements should include:
- Windows 10
- pfSense
- Internet

### Wrapup

Keep pfSense deployed in your VirtualBox Manager to serve as the router/firewall on your LAN. This will give you greater control over the lab environment's network and play a vital role in Ops 401 when we deploy monitoring solutions to the LAN.

## Submission Instructions

1. Create a new blank Google Doc.
1. Populate the Google Doc with the contents of your submission as required above.
1. Name the document according to your course code and assignment.
   - i.e. `seattle-ops-201d1: Reading 01` or `seattle-ops-201d1: Lab 04`.
1. Add your name & date at the top of the Google Doc.
1. Share your Google Doc so that "Anyone with the link can view".
1. Paste the link to your Google Doc in the discussion field below and share an observation from your experience in this lab including how long this lab took to complete.
