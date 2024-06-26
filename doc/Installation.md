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

```
sudo service inspircd restart
```


## Tester avec un client

Installer weechat et se connecer au serveur localement

```bash
sudo apt install weechat
weechat
> /server add ici localhost/6667
> /connect ici
> /join #cafe
> coucou !
> /part
> /quit
```

## Se connecter à distance (non-testé)

Rediriger le nom de domaine (irc.little.courses) vers le serveur avec un CNAME dans namecheap

```
sudo cp /etc/inspircd/inspircd.conf ~/inspircd.conf.local
sudo jed /etc/inspircd/inspircd.conf
```

```xml
<bind address="" port="6667" type="clients">
```
```
sudo service inspircd restart
```

