# SSH-Troubleshoot
Tools to troubleshoot ssh connections to campus server with access to server and client side. Each folder contains a different tool with its own readme. 

# Original Exploration Overview:
## Problem: 
Students working on shared server were having problems remotely connecting.
Errors: Connection timed out, Connection refused
## Background:
Since our system administrater on my project team with the digital humanities graduated, our team has been squandering to successfully share access to large data files. This is a record of my first time troubleshooting the server beyond checking to see if it was turned on. I wanted to record this as well as have a way to access the same tools I used incase another problem arises.
I am using an Ubuntu16 VM on my windows laptop to access the server remotely. The server itself has a default ubuntu os. 
## Method/Results:
1. Ping: I was able to successfully ping the server from an off campus location using the university VPN. This eliminated the possibility that the problems that I have been having are from the VPN.  
2. Gain physical access to server: luckily I was able to access the server itself allowing me to troubleshoot with root access.
3. Check UFW rules: Using the ufw status command I noticed that port 22 was not active.
4. Change UFW rules: Using the ufw allow command (with root access: # ufw allow 22) I allowed access to port 22.
5. Confirm: Using my laptop I was successfully able to access the server using the vpn and ssh as I have done before.
## Discussion:
Though I was able to successfully fix the issue, I am still wondering as to why the server's firewall removed access to the default port. I was able to confirm that this was not a university wide security measure by accessing another campus server using vpn and ssh. 
