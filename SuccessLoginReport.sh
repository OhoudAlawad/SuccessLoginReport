#!/bin/bash
echo "
                 Welcome to Login Successful Report

                           Programing By

                           Ohoud Alawad

"
echo " Num of Logins      Date       User         IP"
echo "---------------------------------------------------------------"
grep "Accepted password" /var/log/auth.log | awk '{ print "   \t    "$1" "$2"\t"$9"\t  "$11}' | sed s/rhost=// | sort | uniq -c
echo " "
echo "---------------------------------------------------------------"
