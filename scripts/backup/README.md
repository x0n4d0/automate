<kbd>[&larr; README](../../README.md)</kbd>

<h1 align=center>

Backup Script

</h1>

## **About This Script**

This script is used to automate the backup of the most important files on my computer. These files are saved to my **USB Stick** or **External HD**. The directory will be zipped and sent to the **USB Stick** or **External HD** and can also be sent to two different directories for security reasons. That way I never lose any important files.

## **Why Did I Make This Script?**

I created this script because I have already lost many important files due to hard disk problems, such as badblocks, corrupted files and even the loss of the hard disk itself. So, I needed a solution to mirror and save the most important files on more than one disk.

## **How Does The Script Work?**

- The script will go to each directory that has been defined;
- Each directory that has been defined will be compressed, inserting a date: **`folder_-_YYYY-MM-DD.zip`**; <br>Example: **`Pictures_-_2020-07-03.zip`**
- Each compressed directory will be copied to the backup directory: 
  - Before, it will be checked in the directory if there is the same file with the date of a previous backup;
  - If it exists, it will be deleted before copying the new file.
- Some directories will be compressed with password, such as: **`Documents/`**, **`Pictures/`**, ...;
- The project directory will be saved with the exception of a few folders, such as: **`node_modules/`**, **`.git/`**, ...;
```sh
$ rsync -aP --exclude=node_modules $DIR $DEST
```
- Some directories will be listed in a text file. These are files that are not that important and can be saved just for information to save space and know what to download next, such as: **`Iso/`**, **`Movies/`**, **`Discography/`**, **`Discs/`**, **`VirtualMachines/`**, **`Softwares/`**, ...;


## **How To Use The Script?**

- Download this script;
- Send this script to bin folder:
```sh
$ sudo cp backup.sh /usr/bin/backup
$ sudo chmod +x /usr/bin/backup
```
- Now, some script commands will be available on the terminal:

```sh
$ backup -projects # for save my projects folder
$ backup -doc # for save my docs
$ backup -all # for save all files
```