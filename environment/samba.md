https://ubuntu.com/tutorials/install-and-configure-samba

sudo smbpasswd -a username

sudo nano /etc/samba/smb.conf

    [sambashare]
        comment = Samba on Ubuntu
        path = /home/username/sambashare
        read only = no
        browsable = yes

sudo service smbd restart

sudo ufw allow samba