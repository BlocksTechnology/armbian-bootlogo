# Armbian BootSplash Creator

This simple script with bootsplash repacker are to assist users trying to replace their stock boot splash logos.

## Dependencies

You will need an x86-64 computer running Linux.
Dependencies are: ImageMagick

        sudo apt install imagemagick

Be sure to install the dependencies with the package manager of your linux distribution.

## Instructions

First of all please take a moment and be sure to take a backup of your original bootsplash logo. This file is located at /usr/lib/firmware/bootsplash.armbian

Now you can place your image into this folder as logo.png (If your image is not png format please convert it)
and you will now be able to launch the script called create-bootsplash.sh (You may need to give it executable permissions by typing chmod +x create-bootsplash.sh ).

The script will run and will also give you nearly the same instructions as you have here. If all went correctly you will find a new file called bootsplash.armbian in this folder.

Now onto the slightly harder part. Getting this file onto your device to the correct folder.
Please copy this file over to your device by your method of choice. SSH works rather well for this but just simple USB drive containing the file will work as well :)

Now that the file is on the device you need to move it to its final destination. You will need superuser permissions to do this (sudo).

sudo cp <your-path-to-the-copied-file> /usr/lib/firmware/bootsplash.armbian

This will move your new logo to the correct destination.

That is the "hard" part over :)

Now please just update your initramfs so the file is used on bootup. You can do this by entering this command: update-initramfs -v -u

Now just reboot your device and you will see your new logo on boot :)


# Guide


**Important:
Ensure that all .sh files are executable** 

        sudo chmod +x create-bootsplash.sh 

        sudo chmod +x create-gifSplash.sh
### 1. Create Bootsplash with image and spinner

1. The script expects a _.png_ file on the working directory with a custom image. 

2. Run the script: 

        ./create-bootsplash.sh

3. After running the script a new file called `bootsplash.armbian` will be created, which will then need to be copied

        On the working directory:
        ---

        sudo cp bootsplash.armbian /usr/lib/firmware/bootsplash.gif

### 2. Create GIF Bootsplash

1. The script expects a file called `animation.gif` on the working directory

2. Run `create-gifSplash.sh` bash script 

        ./create-gifSplash.sh

3. After running the script a new file called `bootsplash.armbian` will be created, which will then need to be copied

        On the working directory:
        ---

        sudo cp bootsplash.armbian /usr/lib/firmware/bootsplash.gif

### 3. Update initramfs bootsplash hook 

1. `sudo nano /etc/initramfs-tool/hooks/bootsplash`

2. On the file add the following entry :

            splashfile="/usr/local/lib/firmware/bootsplash.armbian"


3. Update initramfs 

            update-initramfs -u
            update-initramfs -v -u