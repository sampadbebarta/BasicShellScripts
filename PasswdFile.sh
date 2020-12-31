cat /etc/passwd
awk '{ print $1 }' /etc/passwd
awk -F : '$3 >= "1000" {print " User " $1,$3}' /etc/passwd
awk '{ print $2 }' /etc/passwd
