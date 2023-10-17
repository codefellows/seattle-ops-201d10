# Workstation Deployment SOP

## Overview

Email account provisioning and client deployment are a routine operation in an internal service desk, but an important one. Following policy and SOP during employee onboarding, job transfer, and termination is critical to all parties involved.

## Scenario

A new employee has been hired. According to company SOP, you are to deploy their email client software and all required hardware in advance of their first day of work. The following information about the new hire was emailed to you from HR.
- Name: Dwight Schrute
- Job title: Assistant to the Regional Manager
- Department: Sales
- Start date: Three days from today
- Hardware (VM) required: Desktop PC with a second internal hard drive for data backup purposes
- You are to follow the [SOP: New Employee Computer and Email Configuration](./SOP-new-employee.md).

## Objectives

- Prepare a new VM for the new hire according to the scenario's requirements and provide screenshots of:
  - VM storage configuration
  - Windows user profile configuration
  - Second internal hard drive installed and accessible from Dwight's user profile
  - Windows user management
    - Password-protected user profile
    - Password-protected administrator profile
  - Thunderbird client
  - Configure an automatic email signature for the new hire
  - RDP settings

## Tasks

**Part 1: Windows 10 VM Setup**

Review the scenario requirements carefully before proceeding.
- Create a new Windows 10 VM and include in your submission screenshots of VirtualBox configuration.

**Part 2: Follow the SOP**

- Carefully read the entirety of the [SOP: New Employee Computer and Email Configuration](./SOP-new-employee.md).
- Configure the VM, OS, software, and accounts according to the SOP
  - For the account, create a new free [Microsoft 365 account](https://www.office.com/), creating a new email address.
    > You do not need to use Dwight Schrute's name for the email account. I recommend creating an account named `<personal account name>.lab@outlook.com`. This account can be used again in future assignments involving email.

**Part 3: Welcome Email**

In your Google Doc submission, draft a short welcome email to the new hire detailing everything you prepared and how they should access the new system.

## Stretch Goals (Optional Objectives)
Pursue these stretch goals if you have remaining lab time.

**Part 4: Automation**

Select a single process (or more, if time allows) from the above assignment and attempt to automate it using a batch script. Link to your batch script in your submission.

## Submission Instructions

1. Create a new blank Google Doc. Include above assignment submission text and images within this Google Doc.
1. Name the document according to your course code and assignment.
   - i.e. `seattle-ops-201d1: Reading 01` or `seattle-ops-201d1: Lab 04`.
1. Add your name & date at the top of the Google Doc.
1. Share your Google Doc so that "Anyone with the link can view".
1. Paste the link to your Google Doc in the discussion field below and share an observation from your experience in this lab including how long this lab took to complete.
