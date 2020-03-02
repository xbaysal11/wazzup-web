#!/bin/bash
TOKEN=
CHAT_ID=
API=https://api.telegram.org/bot$TOKEN/sendMessage

SERVER=

STATUS=`wget --spider -S $SERVER 2>&1 | grep "HTTP/" | awk '{print $2,$3,$4}'`
DATE=`date +"%m.%d.%Y"`
TIME=`date +"%H:%M:%S"`

MESSAGE="SERVER IS DOWN!
----------------------------------------------------
Date   :    ${DATE}
Time   :    ${TIME}
----------------------------------------------------
Server :    ${SERVER}
Status :    ${STATUS}
----------------------------------------------------"

if curl -s --head --request GET $SERVER | grep '200' > /dev/null; then 
     echo "Server is UP"
else 
     curl -s -X POST $API -d chat_id=$CHAT_ID -d text="$MESSAGE"
     echo "Server is DOWN"
fi