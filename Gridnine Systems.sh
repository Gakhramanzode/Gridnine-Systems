#! /bin/bash

DATE_RELEASE=$( cat /etc/lsb-release | grep "DISTRIB_RELEASE=20.04" )

if [ $DATE_RELEASE == "DISTRIB_RELEASE=20.04" ]; then
        FIVE_YEARS=$( date --date="5 years ago" +"%s" )
        DATE=$( date -d 2020-04-01 +%s )
        if [ $FIVE_YEARS -ge $DATE ]; then
                echo "Support period is over"
        else
                 echo "Support period is not over"
        fi
fi