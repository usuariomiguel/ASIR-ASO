## Error al instalar Guest-additions
      sudo apt install virtualbox-guest-utils virtualbox-guest-dkms

## Error /var/lib/dpkg/lock

1.     fuser -vki /var/lib/dpkg/lock
2.     rm -f /var/lib/dpkg/lock
3.     dpkg --configure -a
4.     apt autoremove

## Instalacion de pip y libreria MySQLdb

1.      apt install python-pip
2.      pip install -U pip
3.      apt install python-dev libmysqlclient-dev
4.      pip install MySQL-python
