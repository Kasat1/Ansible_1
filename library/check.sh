#!/usr/bin/bash

[ -f "$1" ] && source $1
if [ -z "${url}" ]; then
    printf '{"failed": true, "msg": "Missing required arguments: url"}'
    exit 1

fi
[ -f "$2" ] && source $2
if [ -z "${response_code}" ]; then
    printf '{"failed": true, "msg": "Missing required arguments: response_code"}'
    exit 1

fi
response=$(curl --write-out %{http_code} --silent --output /dev/null ${url} )
 
if [ "${response_code}" -eq "${response}" ]; 
then
cat << EOF
{
    "changed": true,
    "msg": "TRUE"
}
EOF
exit 0
else
{
    "changed": true,
    "msg": "FALSE"
}
EOF
exit 1
fi