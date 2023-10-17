# Class 04

## Class Outline

1. Review
    - Ops Challenge: Functions
    - Issue Tracking System
1. Lecture
    - Ops Challenge: Arrays
    - Troubleshooting Techniques
    - ITIL Problem Management
    - Disk Management
1. Demo
    - Applied Ticket Resolution
1. Lab & Ops Challenge

## Overview

Approaching computer problems using a troubleshooting methodology can be useful when you're starting out. This lets you follow a phased approach, rather than stressing over what you should do next. Computer support technicians must hone these problem-solving instincts in order to make progress in their tech careers.

## How does this topic fit?

**Where we've been**:
In the previous class we were using issue tracking systems to manage and resolve a technical workload as part of routine service desk operations.

**What are we focusing on today**:
Today, we'll be diving into troubleshooting techniques to help students more effectively and efficiently solve issues.

**Where we're headed**:
Next class you will work with Windows command line tools and learn how to interact with a Linux Samba share.

## Troubleshooting Techniques

### Why
- ITIL Problem Management provides a structured approach to identifying, documenting, and resolving IT issues. By following defined processes and best practices, IT teams can efficiently address problems and minimize their impact on business operations.
- Effective troubleshooting techniques enable IT professionals to quickly identify the root cause of problems and implement appropriate solutions. This helps in reducing downtime and ensuring that systems and services are available and reliable for end-users.
- ITIL Problem Management includes proactive measures to analyze incident data and identify recurring issues. By addressing these underlying problems, IT teams can prevent future incidents, leading to improved system stability and user satisfaction.
- ITIL Problem Management ensures that IT teams meet SLAs by resolving issues within specified timeframes. This enhances the overall service quality and builds trust with stakeholders and customers.
- ITIL Problem Management encourages a culture of continuous improvement within IT organizations. Through analysis and evaluation of problem resolution processes, teams can identify areas for enhancement and make iterative improvements.
- Disk management plays a crucial role in optimizing storage resources. Proper disk management ensures efficient allocation of disk space, prevents fragmentation, and enhances system performance.
- Disk management also involves data security measures such as encryption and access control. Implementing these practices helps safeguard sensitive information and protects against data breaches.

### What
- _______ _______ _______ is the process of identifying the underlying cause or source of a problem or issue, rather than just addressing its symptoms, to prevent its recurrence.
- _______ _______ is a philosophy of making incremental and ongoing enhancements to processes, services, and products to achieve higher levels of efficiency, quality, and customer satisfaction.
- _______ _______ is the practice of recording and documenting details about a problem, including its symptoms, steps taken to troubleshoot, and the final resolution, for future reference and learning.
- _______ _______ is the practice of recording and documenting details about a problem, including its symptoms, steps taken to troubleshoot, and the final resolution, for future reference and learning.
- _______ _______ is a part of the ITIL (Information Technology Infrastructure Library) framework that focuses on managing the lifecycle of problems, aiming to prevent incidents and minimize their impact on IT services.
- _______ _______ _______ is an approach in ITIL Problem Management that involves analyzing incident records and using data from various IT Service Management processes to identify trends and potential problems before they escalate.
- _______ _______ and _______ is the process of categorizing and prioritizing problems based on their impact, urgency, and severity to allocate appropriate resources for resolution.
- _______ _______ and _______ is the process of investigating and analyzing the identified problem to determine its root cause and implementing the necessary steps to resolve it effectively.
- _______ and _______ _______ is the process of monitoring, controlling, and managing problems and errors throughout their lifecycle to prevent their recurrence and improve overall system reliability.
- _______ _______ and _______ is the final phase of ITIL Problem Management, involving the closure of the problem ticket after successful resolution, and evaluating the effectiveness of the problem-solving process.
- _______ _______ _______ is a post-incident review and analysis of significant problems or major incidents to identify lessons learned and opportunities for improvement.
- _______ _______ _______ is the practice of generating reports and metrics related to problem management activities to track performance, identify trends, and make data-driven decisions for improvement.
- _______ is a command-line tool in Windows 10 used for disk partitioning and disk management tasks.

### How
- Document tickets in Spiceworks, tracking them to resolution.
- Technically resolve both tickets' issues in your lab VM.
- Apply the troubleshooting methodology to both tickets.

### Experimentation and Discovery Ideas
- Why should you consider investigating recent changes in the environment when troubleshooting an issue?
- Why is it useful to make a list of all possible problems before starting the troubleshooting process?
- What is the importance of a change control window during the implementation of a fix?
- Why is it advisable to create preventative measures after successfully resolving an issue?
- How might troubleshooting in a technical setting be similar to troubleshooting in everyday life situations? Can you think of an example where a problem-solving approach you use in daily life could be applied to a technical problem?
- Let's talk about assumptions. When troubleshooting, do you think assumptions could help or hinder the process? How might identifying and challenging assumptions play a role in effective troubleshooting?
- Sometimes troubleshooting requires collaboration. How might discussing the issue with colleagues or peers who have a different perspective help in identifying the root cause of the problem? Can you think of a situation where an outsider's viewpoint might have been valuable in your problem-solving process?
- Let's explore the concept of systematic vs. haphazard troubleshooting. What are the potential benefits of following a structured approach when dealing with a complex issue? Can you envision a scenario where a disorganized troubleshooting process could lead to unnecessary complications?
- Failure is often seen as a negative outcome, but in troubleshooting, it can offer valuable insights. How might reframing failures as learning opportunities influence your approach to tackling problems? Can you recall a time when a failure led you to a breakthrough?
- Imagine you're troubleshooting a problem that seems to have multiple possible causes. How might you evaluate and test each potential cause systematically without overlooking any possibilities? What role might experimentation play in this process?

## Learning Objectives

### Students will be able to

#### Describe and Define

- CompTIA Troubleshooting Methodology
- ITIL definition of a Problem
- Root cause analysis
- ITIL Problem Management
- Disk Management

#### Execute

- Use bash scripting to generate a system information report
- Apply the CompTIA Troubleshooting Methodology
- Configure a new internal hard drive in Windows
- Resolve application corruption in Windows

## Helpful Resources

- [CompTIA A+ 220-902 Troubleshooting Methodology](https://www.professormesser.com/free-a-plus-training/220-902/how-to-troubleshoot/)
- [CompTIA A+ 220-902 All-In-One Exam Guide Ch 2 Pg 37 "Troubleshooting Theory"](https://www.amazon.com/CompTIA-Certification-Guide-220-801-220-802/dp/007179512X)
- [ITIL Problem Management](https://wiki.en.it-processmaps.com/index.php/Problem_Management)
- [ITIL Continuous Service Improvement (CSI) Process](https://wiki.en.it-processmaps.com/index.php/ITIL_CSI_-_Continual_Service_Improvement)
- [How to Initialize an SSD in Windows 11/10?](https://recoverit.wondershare.com/partition-tips/initialize-a-hard-drive-in-windows-10.html)

## Notes

### CompTIA Troubleshooting Methodology
1. Identify the problem
   - Gather information
     - Question the user
     - Record error codes/messages
     - Research as necessary
   - *Reproduce the Problem*
   - Identify symptoms
   - Distinguish separate problems
2. Establish a theory (of probable cause)
   - Question the Obvious
     - Be careful about hastily limiting the scope
   - Eliminate Possibilities
   - Divide and Conquer
3. Test the theory
   - may cycle between 1, 2, and 3 for a while
   - Check the simplest things first, even if they may not be the most likely (cheap tests)
   - Technical intervention vs Human/User intervention
4. Establish a plan of action to resolve the problem
   - Then enact that plan!
5. Verify functionality
   - Be thorough! Easy to fool yourself here
6. Complete documentation, report issues, etc.
