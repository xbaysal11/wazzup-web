#!/bin/bash

if curl -s --head --request GET <URL> | grep '200' > /dev/null; then 
     echo "Server is UP"
else 
     echo "Server is DOWN"
fi