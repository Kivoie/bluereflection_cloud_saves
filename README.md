# README #

This README contains instructions on how to use the batch file and bash scripts for cron jobs and scheduled tasks.  

Running `bluereflection.sh` will allow you to check your local repository status, pull from the online repository, and then push to the online repository with only one bash script. This is a temporary solution for a makeshift cloud save feature for my save data.  

To automate this as a cron job you will need to do the following (from Vista to Windows 10):  
1. Open your start menu and search for `Task Scheduler`. This is Microsoft's built-in task scheduler for services and drivers.  
2. Click on `Task Scheduler Library` on the left side pane.  
3. On the right-most pane, click `Create Task...`  
4. Give it a name and a helpful description. Click on `Change User or Group` and type in `System` in the text box. Click `OK` to apply changes.  
5. Select the `Triggers` tab and click `New` on the bottom left. Choose from any of the selections in the dropdown box and customize to your preference. Click `OK` to apply changes.  
6. Select the `Actions` tab and click `New` on the bottom left. Select `Start a Program` from the dropdown box and enter in/search for the file path for the batch/bash script. Click `OK` to apply changes.  
7. Your batch/bash script should now be fully automated to suit your preferences.  
8. (Optional) You may browse through the `Conditions` and `Settings` tabs in your task properties for additional options.
