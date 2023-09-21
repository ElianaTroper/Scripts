# $1 = machine $2 = user $3 = token
echo url="https://www.duckdns.org/update?domains=$1-$2&token=$3&ip=&verbose=true" | curl -k -o /home/$2/Logs/ddns/$2@$1.log -K -
