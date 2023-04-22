#!/bin/bash

url="localhost:3000"
status=$(curl -s -w "%{http_code}" -o /dev/null $url)

if [ $status -eq 200 ]; then
  echo "Website is up and running (status code: $status)"
else
  echo "Website is down or returned an error (status code: $status)"
fi

