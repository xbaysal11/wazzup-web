#!/bin/bash
TOKEN=
CHAT_ID=
API=https://api.telegram.org/bot$TOKEN/sendMessage

DATE=`date +"%m.%d.%Y"`
TIME=`date +"%H:%M:%S"`

MESSAGE="SERVER IS DOWN!
----------------------------------------------------
Date   :    ${DATE}
Time   :    ${TIME}
----------------------------------------------------"

if curl -s --head --request GET <URL> | grep '200' > /dev/null; then 
     echo "Server is UP"
else 
     curl -s -X POST $API -d chat_id=$CHAT_ID -d text="$MESSAGE"
     echo "Server is DOWN"
fi