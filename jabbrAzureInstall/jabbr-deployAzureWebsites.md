# Deploying JabbR to Azure websites
---
## Assumptions
This guide assumes __no__ prior effort, beyond the prerequisites (no db, no blobs, no sites). 
## Prerequisites
1. You'll need a fork of the JabbR repository in a source you control. In this example we forked the JabbR repository on GitHub.
1. An Azure subscription


## Configuring the new Azure website
From the Azure management console, choose 'New' and select 'Web Site', 'Custom Create'. The first task is selecting a unique name (unique to the '.azurewebsites.net' name space) for the site, picking the region, registering for a database and confirming that the site will be deployed from a repository.

![description](Images/jabbr-azureWebsites-01-wizardStart.png?raw=true)

When registering for a database, choose either the 'free 20MB SQL' or the standard SQL database.

![description](Images/jabbr-azureWebsites-02-dbSelect.png?raw=true)

The wizard will pre fill the connection string name as 'DefaultConnection'.

![description](Images/jabbr-azureWebsites-03-connectString.png?raw=true)

### This string name is significant, and must be changed to 'jabbr'

If the connection string is not 'jabbr', the site will not operate.
![description](Images/jabbr-azureWebsites-04-connectStringJabbR.png?raw=true)

Configuring the database login details is a tangent that will be relevant when examining the configuration from within JabbR.
    
    Name:     user
    Password: Password!

![description](Images/jabbr-azureWebsites-05-dbConfigure.png?raw=true)


Now we select where the source will come from - there are many options - as stated earlier, we are using GitHub in this example. Once we click the right arrow a new window will open and prompt for authentication to GitHub (from GitHub).

![description](Images/jabbr-azureWebsites-06-vcsSourceSelect.png?raw=true)

Once the validation is complete, navigate to the Azure management window (notice 'The authorization was successful' at the top of the wizard) and choose the repository and branch that will be deployed. In the image below, we have 'JabbR' and 'master' selected.

![description](Images/jabbr-azureWebsites-07-repoDeploy.png?raw=true)

Click the check mark icon in the bottom of the wizard, and the site will begin to deploy from source.

### Open Documentation Tasks:
1. Create PowerShell version of JabbR Azure Website deployment
1. Add documentation of configuration to JabbR (within app)
1. Document process to add Azure blob storage
1. Document configuration of identity providers (Google, Twitter, FB)
1. Include existing documentation on self hosted install to also be in 'docs' folder