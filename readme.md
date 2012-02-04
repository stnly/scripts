#Backup shell script

This shell script is written for my own use in a web server with no automatic backup.

##Usage
You will need shell access.
SSH into your server.
Copy backup.sh into main folder

Make script executable:
    chmod +x backup.sh

Run script:
    ./backup.sh

You can add it into your path to run it without "./".

For daily cron job, use: 

Runs at 1am server time:
    0 1 * * * ./backup.sh  

Runs everyday:
    @everyday ./backup.sh

To edit cron jobs:
    crontab -e

To list all cron jobs:
    crontab -l

Or use your cPanel to edit the cronjob.

##License

The Uncopyright License

0.Do whatever the hell you like.