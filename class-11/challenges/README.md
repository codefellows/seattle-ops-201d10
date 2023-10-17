# Ops Challenge - Automated Endpoint Configuration

## Overview

Standing up Windows 10 endpoints from scratch can be extremely time-consuming. You'll want to automate Windows system configurations as much as possible, to save yourself precious time. In class, we can simply export an OVA of a Windows 10 VM; however, in a production operations environment, you may not have such luxuries. It's good to get a sense of how Powershell can contribute to this effort.

## Windows Endpoints
In the context of Windows 10, "endpoints" typically refer to two different concepts: network endpoints and device endpoints.

**Network Endpoints**

In networking, an endpoint is a specific IP address and port combination on a device where a service or application is running and can be accessed. In the case of Windows 10, applications and services often communicate over the network by using specific endpoints to establish connections and transfer data. For example, a web server running on a Windows 10 machine might use port 80 or 443 as its endpoints for HTTP and HTTPS communication, respectively.

Windows 10 has various network endpoints for different services and applications running on the device. These endpoints allow the operating system and installed software to communicate with other devices on the local network or the internet. Each application or service that listens for incoming connections has its own unique network endpoint.

**Device Endpoints**

In the context of Windows 10 security, "device endpoints" refer to the various points of entry or exit for data on a computer system. These endpoints are often associated with specific hardware components or communication channels through which data can be accessed or transferred. For example:

- USB ports: These are endpoints for data transfer between the computer and USB devices such as external hard drives, USB flash drives, printers, etc.
- Network adapters: These are endpoints for data communication over a network, whether it's a wired Ethernet connection or a wireless Wi-Fi connection.
- Bluetooth connections: Bluetooth endpoints enable data exchange between a Windows 10 device and other Bluetooth-enabled devices like smartphones, keyboards, or speakers.

Managing and securing these device endpoints is crucial to ensure the overall security and integrity of the Windows 10 system. Endpoint security solutions are used to protect these access points from potential threats and to monitor and control the flow of data between the device and external sources.


## Resources

- [Powershell one-liners](https://github.com/superswan/Powershell-SysAdmin)
