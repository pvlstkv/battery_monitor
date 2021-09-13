# Instruction for ubuntu
1. If you don't have the acpi package, you should install it. Run this command
```sh
sudo apt install acpi 
```
2. Download the bat_charge_monitor.sh script
3. Put these scripts to some folder (for example "/home/<yourusername>/battery_charge_monitor", if nevessary, create the folder you want)
4. Open the "startup applications preferences" in the application list
  
![startup](/ubuntu/startup_application_preferences.png)
  
5. Click the button "add"
6. Write a name of a startup program
  
![adding](/ubuntu/add_startup_program.png)
  
7. Click the button "browse" next to the "command" field
8. Select the bat_charge_monitor.sh script (the 3d step)
9. Click the button "add"
10. Reboot 
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
