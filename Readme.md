#Readme
#id hobs )or the user= and update the PUID and GUID
#update Samba configuration
sudo nano /etc/samba/smb.conf
	#add this
[openhab config]
comment = openhab config
path = /dockerdata/openhab/
force user = root
force group = root
writeable = yes
valid users = openhab

 #then check with
testparm

 #now create the user
sudo smbpasswd -a hobs 
#and give it a new password
sudo service smbd restart 