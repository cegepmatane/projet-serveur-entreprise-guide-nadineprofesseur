
## Tester avec un client

### Se connecter au serveur localement

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

### S'enregistrer et utiliser nickserv

```bash
> /connect ici
> /join #cafe
> (moi) /nick maria
> (maria) /msg NickServ register unmotdepassecomplique maria@email.com 
> /msg NickServ identify maria unmotdepassecomplique
```

### Tester le bot de jeu

Dans une console : 
```bash
> cd lykos
> python3 wolfbot.py &
```

Dans une autre console
```bash
> /connect ici
> /join #jeu
> (#jeu) !games
> (#jeu) !join (mode)
> (#jeu) !start 
```

### Tester le bot de jeu avec screen
```bash
> screen -ls
> screen -S loupgarou
> cd lykos
> python3 wolfbot.py &
Ctrl-A-D
> screen -R -D loupgarou
```



