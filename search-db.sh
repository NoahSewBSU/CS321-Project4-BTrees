#!/bin/sh

for value in accepted-ip accepted-time invalid-ip invalid-time failed-ip failed-time reverseaddress-ip reverseaddress-time user-ip
do
   time java -jar build/libs/SSHSearchDatabase.jar --database=SSHLogDb.db  --topfrequency=25  > output/db-search/"DB-QUERY-"$value"-top25.txt"
done
