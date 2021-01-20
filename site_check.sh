#!/bin/bash

#script to check the redirection configuration for a domain
if [ -z $1 ]; then
	echo "Enter the domain"
	exit;
fi

echo "Verifying: http://www.$1"
curl -I "http://www.$1"

echo "Verifying: http://$1"
curl -I "http://$1"

echo "Verifying: https://www.$1"
curl -I "https://www.$1"

echo "Verifying: https://$1"
curl -I "https://$1"

echo 'Verification Completed!'
exit;