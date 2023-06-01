#!/bin/sh

#variables
university="Uppsala University"
name="Docker"
jobtitle="Student"
mail="docker@honeypot.org"

#echo the variables

echo "[+] Downloading Uppaal with the following information:"
echo "University: $university"
echo "Name: $name"
echo "Jobtitle: $jobtitle"


#command



curl 'https://www.it.uu.se/research/group/darts/uppaal/download/form.php' -L -JO -X POST -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/113.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' -H 'Accept-Language: en-US,en;q=0.5' -H 'Referer: https://www.it.uu.se/research/group/darts/uppaal/download/registration.php?id=0&subid=17' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Origin: https://www.it.uu.se' -H 'DNT: 1' -H 'Connection: keep-alive' -H 'Cookie: PHPSESSID=fgld8pvmjim2ea7e0v191bst93' -H 'Upgrade-Insecure-Requests: 1' -H 'Sec-Fetch-Dest: document' -H 'Sec-Fetch-Mode: navigate' -H 'Sec-Fetch-Site: same-origin' -H 'Sec-Fetch-User: ?1' --data-raw "Name=$name&JobTitle=$jobtitle&Company=$university&Street=&City=&Country=&Postcode=&Email=$mail&Homepage=&Telephone=&Fax=&Agreement=on&id=0&subid=17"