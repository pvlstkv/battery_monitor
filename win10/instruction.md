# Instruction for windows 10
1. Download 2 scripts: battery_monitor.ps1 and startup_b_m.cmd
2. Put these scripts to some folder (for example "D:\battery_monitor", if need create the folder)
3. Open startup_b_m.cmd to change by the windows notepad or something other 
4. Change the path in quotes to yours where battery_monitor.ps1 is replaced ('... -Command "D:\battery_monitor.ps1" ' to '-Command "your path to battery_monitor.ps1 script"')
5. Save startup_b_m.cmd script
6. Press Win+R and execute this command "shell:startup"
7. Drag and drop startup_b_m.cmd script to the startup folder
8. Reboot 
## Change parameters 
If you want change parametrs of a low or high level battery charge and checking time you should follow the next steps
1. Open your folder ("D:\battery_monitor") where battery_monitor.ps1 script is replaced
2. Open battery_monitor.ps1 script to change 
3. There is three variables: $highLevel, $lowLevel, $timeoutOfChecking. $highLevel is for a high battery charge level in percent, $lowLevel is for a low battery charge level in percent, $timeoutOfChecking is time of checking battery charge level in seconds. You need change this variables to your requirements
4. Save file
5. Reboot

### Example of work
![charged](/win10/charged.png "charged")
![discharged](/win10/discharged.png "discharged")
