# Hyprland-dumb-scripts
I will be keeping the dumb bash scripts i created for hyprland caelestia to make it assthetic

## update_sddm.sh
this script will be able to change the names of the sddm video wallpaper either randomly or by inputting the one you need. 
It is done using sed command and it is connected with the silent sddm rei.conf.
Change the file location as needed.
the tuple contains the names of the video clips... change it accordingly.


Please use it after seeing the code, idk what it will do if not properly handled 



### Random initalization
``` 
sudo bash ./update_sddm.sh  
Random Picking... 
Docking successful, Slick. All 3 coordinates set to: hayes
```

### Specific initialization

```
sudo bash ./update_sddm.sh peter
Docking successful, Slick. All 3 coordinates set to: peter
```
