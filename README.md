# README #

This README contains instructions on how to use the batch file and bash scripts for cron jobs and scheduled tasks.  

Running `bluereflection.sh` will allow you to check your local repository status, pull from the online repository, and then push to the online repository with only one bash script. This is a temporary solution for a makeshift cloud save feature for my save data.  

To automate this as a cron job you will need to do the following (for Windows Vista/7/8.1/10):  
1. Open your start menu and search for `Task Scheduler`. This is Microsoft's built-in task scheduler for services and drivers.  
2. Click on `Task Scheduler Library` on the left side pane.  
3. On the right-most pane, click `Create Task...`  
4. Give it a name and a helpful description. Click on `Change User or Group` and type in `System` in the text box. Click `OK` to apply changes.  
5. Select the `Triggers` tab and click `New` on the bottom left. Choose from any of the selections in the dropdown box and customize to your preference. Click `OK` to apply changes.  
6. Select the `Actions` tab and click `New` on the bottom left. Select `Start a Program` from the dropdown box and enter in/search for the file path for the batch/bash script. Click `OK` to apply changes.  
7. Your batch/bash script should now be fully automated to suit your preferences.  
8. (Optional) You may browse through the `Conditions` and `Settings` tabs in your task properties for additional options.  

### Why use this?

The advantage of this program (repository) is that the user may rollback to previous commits in the case one or more save files become corrupted and unreadable. If the user unintentionally overwrites their save(s) due to muscle memory (human error), which may happen to some like me, rolling back to a previous version of the save file(s) may prove to be convenient and maintain user satisfaction. As far as I know, no video game platform currently has a method for rolling back to previous save file versions with any of their cloud software services. This will work for almost any video game player save data. A game like Starbound (Chucklefish Games) has a similar method of providing redundant save files in the case of save file corruption (which apparently is not uncommon with that game) by duplicating the save file and keeping a log of the 3 previous saves, deleting the oldest one after each save file is overwritten.

### Optional
You may wish to disable native cloud save for your chosen game(s) (Steam, Origin, Epic) and fork this repository as an alternative to cloud saves.
