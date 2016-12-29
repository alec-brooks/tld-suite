#!/bin/sh
if [[ $# -eq 0 ]]; then
    echo 'Provide a name to tldify eg.\ntldify projectly'
    exit 0
fi

name=$1
tlds=$(curl -s http://data.iana.org/TLD/tlds-alpha-by-domain.txt | tail +2)

for tld in $tlds
do
    tld=$(echo $tld | tr "[A-Z]" "[a-z]")
    if [ ${#name} -gt ${#tld} ] && [[ "$name" == *"$tld" ]]; then
        echo $(echo $name | rev | cut -c $((${#tld}+1))- | rev)"."$tld
    fi
done

