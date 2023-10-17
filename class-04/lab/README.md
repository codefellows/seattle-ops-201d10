# Troubleshooting Techniques

## Overview

Approaching computer problems using a troubleshooting methodology can be useful when you're starting out. This lets you follow a phased approach, rather than stressing over what you should do next. Computer support technicians must hone these problem-solving instincts in order to make progress in their tech careers.

## Scenario

Today you received a couple tickets from the marketing team. These two share the same computer.

Ticket 1: Michelle's Audacity

- Michelle Garcia writes: "Hey all, I'm having trouble with Audacity today. It doesn't launch correctly. I need to import the audio-project file on my Desktop into Audacity for editing, but I'm stuck."

> Be careful how you verify that you have solved the problem, that audio is imported and usable. 

> In order to hear audio originating on the VM, you will need to RDP directly into the Virtual Machine. To make this possible, set the VM's network connection to Bridged and Enable Remote Desktop in Settings > System > Remote Desktop.

Ticket 2: Jorge's Backup Drive

- Jorge Thompson writes: "Hello IT team, I've been running out of hard drive space so I had your weekend technician add a new internal hard drive. We were working on this pretty late so we didn't finish the process. I know it's all plugged in physically, but Windows doesn't show the new hard drive. Can you help?"

System credentials:

- Admin: admin / solarwinds123
- User(local): j.thompson / iceman456
- User(local): m.garcia / beaches999

## Objectives

- Document both tickets in Spiceworks, tracking them to resolution.
- Technically resolve both tickets' issues in your lab VM.
- Apply the troubleshooting methodology to both tickets.

## Resources

- [ops201-class04.ova](https://codefellows.github.io/ops-201-guide/curriculum/#course-schedule){:target="_blank"}
- [Comptia Troubleshooting Methodology](https://www.comptia.org/blog/troubleshooting-methodology){:target="_blank"}
- [How to use Remote Desktop](https://support.microsoft.com/en-us/windows/how-to-use-remote-desktop-5fe128d5-8fb1-7a23-3b8a-41e636865e8c){:target="_blank"}

## Tasks

### Part 1: Staging

Download and import [ops201-class04.ova](https://codefellows.github.io/ops-201-guide/curriculum/#course-schedule){:target="_blank"} into your local VirtualBox.

### Part 2: Troubleshooting Methodology

- For each problem submitted by a user, summarize the problem in your own words.
  - Include all technical details.


- As you complete Part 3 of the lab, map the stages of the [Comptia Troubleshooting Methodology](https://www.comptia.org/blog/troubleshooting-methodology) to the steps you document in the Spiceworks ticket:
  1. Identify the problem
  1. Establish a theory of probable cause
  1. Test the theory to determine the cause
  1. Establish a plan of action to resolve the problem and implement the solution
  1. Verify full system functionality, and, if applicable, implement preventive measures
  1. Document findings, actions and outcomes


### Part 3: Issue Tracking and Resolution

For this portion of the lab, complete all documentation in the Spiceworks ticketing system. As you take steps to resolve the problems, make note in the corresponding ticket. All relevant pictures you take along the way should be uploaded and attached to the ticket as well.

Once you have resolved a problem, take thorough screenshots of the ticket you created in Spiceworks and include *those* screenshots in your lab write-up.


Create each ticket in Spiceworks. For each issue today, document the following in your submission doc:

- Access the [Help Desk](https://on.spiceworks.com/tickets/open/3/activity){:target="_blank"} on Spiceworks cloud.

- For each problem, create a separate ticket in Spiceworks, and describe the user's problem.

- Assign the ticket to yourself.

- Troubleshoot and resolve the issue on each user's computer.
  - System credentials:
    - Admin: admin / solarwinds123
    - User(local): j.thompson / iceman456
    - User(local): m.garcia / beaches999


- On the ticket, thoroughly document **all** operations performed to resolve the problem. Include as many technical details and screenshots as necessary to thoroughly illustrate the actions taken.

- When you have resolved the ticket and documented all actions taken, close the ticket.



### Wrapup

Don't delete ops201-class04 VM and .ova just yet; we'll be revisiting this in class 8 ops challenge!

## Stretch Goals (Optional Objectives)

- Create a script that backs up Jorge's file to the new internal hard drive.
- Schedule the script as a Windows task that executes every night at midnight.
- Add documentation about how you accomplished this in your submission today.

## Submission Instructions

1. Create a new blank Google Doc. Include above assignment submission text and images within this Google Doc.
1. Name the document according to your course code and assignment.
   - i.e. `seattle-ops-201d1: Reading 01` or `seattle-ops-201d1: Lab 04`.
1. Add your name & date at the top of the Google Doc.
1. Share your Google Doc so that "Anyone with the link can view".
1. Paste the link to your Google Doc in the discussion field below and share an observation from your experience in this lab including how long this lab took to complete.
