##
#       Find all Success login Attempts in web server
#
#       v1.1; April 2021
#       Copyrights:
#       Ohoud Alawad
#       GitHub:
#       https://github.com/OhoudAlawad
#       Twitter:
#       @ohoud_alawad
#
##
#!/bin/bash
echo "
                 Welcome to Login Successful Report

                          Programming By

                           Ohoud Alawad

"
echo " Num of Logins      Date       User         IP"
echo "---------------------------------------------------------------"
grep "Accepted password" /var/log/auth.log | awk '{ print "   \t    "$1" "$2"\t"$9"\t  "$11}' | sed s/rhost=// | sort | uniq -c
echo " "
echo "---------------------------------------------------------------"
