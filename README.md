# backup-script
 Script for routine backups on Debian-based Linux servers with a retetion rule based on time and number of directories.

To script works you will need to install rsync in your machine:
```bash
$ sudo apt install rsync 
```
The password the target machine that will be rsynced should be requested every time you try to run the script, so you can insert the password or just run:
```bash
$ sudo ssh-copy-id user@target-ip
```
Enter the password of the target and then it will never be requested again for the root user.

The ```delete.sh``` script was created to retain a specific number os backups over time.
So... We will have 8 directories on 'hourly' backup directory, 7 on 'daily', 4 on 'weekly' and 3 on 'monthly'..

That's the structure of my backup directory.
```
backup-dir
├── [root     4.0K]  daily
├── [root     4.0K]  hourly
├── [root     4.0K]  monthly
└── [root     4.0K]  weekly
```
