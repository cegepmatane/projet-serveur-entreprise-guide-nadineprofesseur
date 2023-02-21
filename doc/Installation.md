# Prodédure d'installation du serveur IRC

## Installation du service inspircd

Installation du service et ouverture des ports

```
sudo apt-get update  
sudo apt install inspircd  
sudo ufw allow 6667/tcp 
sudo ufw reload 
sudo ufw status verbose 
```
## Ajuster le fichier de configuration

Donner un nom au serveur et une adresse

```
sudo cp /etc/inspircd/inspircd.conf ~/
sudo jed /etc/inspircd/inspircd.conf
```

```xml
<server name="irc.little.courses"
        description="LE chat des cours en ligne !"
        id="5AA"
        network="LittleNet">

<admin name="Little Admin"
       nick="nadine"
       email="nadineducegep@gmail.com">
```

## Tester avec un client

Installer weechat et se connecer au serveur localement

```
sudo apt install weechat
weechat
> /server add ici localhost/6667
> /connect ici
> /join #cafe
> coucou !
> /part
> /quit
```
