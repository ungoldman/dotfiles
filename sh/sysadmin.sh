alias listusers="awk -F':' '{ print $1}' /etc/passwd"

# grep '^group_name:.*$' /etc/group | cut -d: -f4
alias groupmembers="cat /etc/group"

# How to Add an Existing User to a Group
# To add an existing user to a secondary group, use the usermod -a -G command followed the name of the group and the user:
# sudo usermod -a -G groupname username
