# Issue tracking system

## Overview

Issue tracking systems are a useful way to manage and resolve a technical workload as part of routine service desk operations. Today you'll work with your first .ova scenario file. This exercise will expose you to common Windows problems and challenge you to document the problems in the Spiceworks ticketing system.

## Scenario

Bob Jackson, a company sales lead, contacted you by phone to let you know he's unable to access his report file on his desktop. "It keeps saying Paint won't open, something like that. Then when I go to launch Apache OpenOffice through the desktop shortcut, it just opens a confusing menu instead of launching the text editor program that I need to edit the report file. It's on my desktop, can you help? I'm going to lunch, so I'll just check with you when I'm back."

## Objectives

- Help Bob resolve the technical issues on his Windows 10 PC.
  - Repair the computer so that Bob can open `tps-report0442` from his user profile on his desktop with Apache OpenOffice suite.
  - Create a shortcut to the Apache Word Processor on Bob's desktop.
  - If you changed any settings, notify Bob via Spiceworks.
- Complete a Spiceworks ticket from inception to resolution.

## Resources

- [ops201-class03.ova](https://codefellows.github.io/ops-201-guide/curriculum/#course-schedule){:target="_blank"}
- [Spiceworks Hepdesk Guide](https://community.spiceworks.com/support/help-desk-cloud-edition/start){:target="_blank"}

## Tasks

### Part 1: Staging

Many labs in the Ops program utilize pre-configured VMs. For today's lab, you'll need to pull down an .ova file and import it.
- Download [ops201-class03.ova](https://codefellows.github.io/ops-201-guide/curriculum/#course-schedule){:target="_blank"}.
- Import ops201-class03.ova into your lab PC VirtualBox Manager.
- Review its system resource allocation, then launch ops201-class03.ova.

You will need to create a [Spiceworks account](https://on.spiceworks.com/dashboard){:target="_blank"} to complete this and the next several labs.

### Part 2: Issue Tracking and Resolution with Spiceworks

For this portion of the lab, complete all documentation in the Spiceworks ticketing system. As you take steps to resolve the problems, make note in the corresponding ticket. All relevant pictures you take along the way should be uploaded and attached to the ticket as well.

Once you have resolved a problem, take thorough screenshots of the ticket you created in Spiceworks and include *those* screenshots in your lab write-up. You can include any extra commentary or explanation you think would be helpful, but it is not required.

- Access the [Help Desk](https://on.spiceworks.com/tickets/open/3/activity){:target="_blank"} on Spiceworks cloud.
- Create a ticket in Spiceworks. Describe Bob's problem.

> Users love to ask for help on multiple issues in the same call or ticket. How will you track these issues?

- Assign the ticket to yourself.
- Troubleshoot and resolve the issue on Bob's computer (`ops201-class03.ova`) with the admin credentials:
  - Username: admin
  - Password: solarwinds123

> You might need to login as Bob (not `admin`) on his machine to attempt to recreate the issue.
> It's OK to change any of Bob's settings, including his password. He's taken a lunch break to let you work on his computer!

- On the ticket, thoroughly document **all** operations performed to resolve the problem. Include as many technical details and screenshots as necessary to thoroughly illustrate the actions taken.

- When you have resolved the ticket and documented all actions taken, close the ticket.

## Wrapup

When you're finished with today's lab assignment, delete ops201-class03 VM from VirtualBox Manager and also delete the .ova file you downloaded.

## Submission Instructions

1. Create a new blank Google Doc. Include above assignment submission text and images within this Google Doc.
1. Name the document according to your course code and assignment.
   - i.e. `seattle-ops-201d1: Reading 01` or `seattle-ops-201d1: Lab 04`.
1. Add your name & date at the top of the Google Doc.
1. Share your Google Doc so that "Anyone with the link can view".
1. Include screenshots of showing all resolved tickets and 3-4 screenshots of tickets showing the details.
1. Paste the link to your Google Doc in the discussion field below and share an observation from your experience in this lab including how long this lab took to complete.
