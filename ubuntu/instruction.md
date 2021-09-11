# Instruction for ubuntu
1. Download bat_charge_monitor.sh script
2. Put these scripts to some folder (for example "/home/<yourusername>/battery_charge_monitor", if need create the folder whatever you want)
3. Open "startup applications preferences" in an application list
![startup](/ubuntu/startup_application_preferences.png)
4. Press a button "add"
5. Write a name of a startup  program
![adding](/ubuntu/add_startup_program.png)
6. Press a button "browse" in front of a "command" field
7. Choose bat_charge_monitor.sh script where you replaced one in the 2 step
8. Press button "add"
8. Reboot 
## Change parameters 
If you want change parametrs of a low or high level battery charge and checking time you should follow the next steps
1. Open your folder ("/home/<yourusername>/battery_charge_monitor") where bat_charge_monitor.sh script is placed
2. Open battery_monitor.ps1 script to change 
3. There is three variables: high_level, low_level, timeout. high_level is for a high battery charge level in percent, low_level is for a low battery charge level in percent, timeout is time of checking battery charge level in seconds. You need change this variables to your requirements
4. Save file
5. Reboot

### Example of work
![charged](/ubuntu/charged.png "charged")
![discharged](/ubuntu/discharged.png "discharged")

There is also an sound alert that does something like this "peak peak peak"
