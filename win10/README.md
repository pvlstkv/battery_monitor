# Instruction for windows 10
1. Download 2 scripts: battery_monitor.ps1 and startup_b_m.cmd
2. Put these scripts in some folder (for example "D:\battery_monitor", if need create the folder)
3. Open startup_b_m.cmd to change it using Windows Notepad or something else 
4. Change the path in quotes to your own,  where battery_monitor.ps1 is located ('... -Command "D:\battery_monitor.ps1" ' to '-Command "your path to battery_monitor.ps1 script"')
5. Save the startup_b_m.cmd script
6. Press Win+R and run this command "shell:startup"
7. Drag the startup_b_m.cmd script to the startup folder
8. Reboot 
## Change parameters 
If you want to change the parametrs of the low or high level battery charge and the checking time, you should follow the next steps
1. Open your folder ("D:\battery_monitor") where battery_monitor.ps1 script is located
2. Open battery_monitor.ps1 script to change 
3. There is three variables: $highLevel, $lowLevel, $timeoutOfChecking. $highLevel is for a high battery charge level as a percentage, $lowLevel is for a low battery charge level as a percentage, $timeoutOfChecking is time of checking battery charge level in seconds. You need change this variables to your requirements
4. Save file
5. Reboot

### Example of work
![charged](/win10/charged.png "charged")
![discharged](/win10/discharged.png "discharged")
