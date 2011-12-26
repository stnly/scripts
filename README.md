#Backup shell script

This shell script is written for my own use in a web server with no automatic backup.

##Usage
You will need shell access.
SSH into your server.
Copy backup.sh into main folder

Make script executable
$chmod +x backup.sh

Run script
$./backup.sh

You can add it into your path to run it without "./".

For daily cron job, use: 

Runs at 1am server time.
0 1 * * * ./backup.sh  

Runs everyday.
@everyday ./backup.sh

To edit cron jobs,
$crontab -e

To list all cron jobs,
$crontab -l

Or use your cPanel to edit the cronjob.

##License

The MIT License

Copyright (c) 2011 Stanley Tan

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
