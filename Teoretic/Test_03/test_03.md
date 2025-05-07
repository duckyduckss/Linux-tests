### **Subiect teoretic – Clasa a IX-a / a X-a – Nivel avansat**

🕒 **Timp recomandat: 30 de minute**
📝 **Fiecare întrebare are 1, 2 sau 3 variante corecte – specificate în cerință.**

---

1. (2 variante corecte) Ce tipuri de fișiere sunt recunoscute de sistemul de fișiere ext4?
   * a) fișiere FIFO
   * b) socket-uri
   * c) hard link-uri
   * d) executabile PE
   * e) device-uri de rețea

2. (1 variantă corectă) Ce face comanda `sudo visudo`?
   * a) Editează fișierul cu parole
   * b) Creează utilizatori privilegiați
   * c) Editează în siguranță fișierul de configurare sudoers
   * d) Activează drepturi de root temporar

3. (2 variante corecte) Ce informații pot fi extrase cu `lsof`?
   * a) PID-urile utilizatorilor
   * b) Fișierele deschise de procese
   * c) Sesiunile SSH active
   * d) Socket-urile utilizate
   * e) Conexiunile USB

4. (1 variantă corectă) Ce rezultat va avea comanda `chmod 1777 /tmp`?
   * a) Schimbă UID-ul folderului
   * b) Activează sticky bit pe /tmp
   * c) Îi dă drepturi doar utilizatorului root
   * d) Împiedică orice scriere în /tmp

5. (3 variante corecte) Ce comenzi pot modifica permisiunile de acces ale fișierelor?
   * a) `chmod`
   * b) `chown`
   * c) `usermod`
   * d) `chgrp`
   * e) `passwd`

6. (1 variantă corectă) Ce fișier determină shell-ul implicit pentru un utilizator în Linux?
   * a) `/etc/passwd`
   * b) `/etc/shells`
   * c) `~/.bashrc`
   * d) `/bin/bashrc`

7. (2 variante corecte) Ce afirmatii sunt adevărate despre fișierele `hard link`?
   * a) Au propriul inode separat
   * b) Nu pot fi create pentru directoare
   * c) Sunt șterse când se șterge originalul
   * d) Împart același inode
   * e) Pot fi create între partiții

8. (1 variantă corectă) Ce rol are comanda `umask`?
   * a) Elimină permisiuni de rețea
   * b) Setează permisiunile implicite pentru fișiere noi
   * c) Maschează shell-ul de utilizator
   * d) Criptează fișierele noi create

9. (2 variante corecte) Ce face comanda `mount` fără argumente?
   * a) Afișează sistemele montate
   * b) Montează toate partițiile
   * c) Returnează eroare
   * d) Afișează fișierele din /mnt
   * e) Listează spațiul liber

10. (1 variantă corectă) Ce extensie este specifică arhivelor create cu `bzip2`?
    * a) `.bz2`
    * b) `.tar`
    * c) `.gz`
    * d) `.xz`

11. (2 variante corecte) Ce opțiuni sunt valide pentru comanda `grep`?
    * a) `-i`
    * b) `--search`
    * c) `-r`
    * d) `--log`
    * e) `--full`

12. (1 variantă corectă) Care este comanda pentru a reîncărca configurația `systemd`?
    * a) `systemctl reload`
    * b) `systemctl daemon-reexec`
    * c) `systemctl restart`
    * d) `systemctl edit`

13. (2 variante corecte) Ce fișiere din `/proc` pot conține informații despre un proces anume?
    * a) `/proc/[PID]/status`
    * b) `/proc/[PID]/cmdline`
    * c) `/proc/stat`
    * d) `/proc/meminfo`
    * e) `/proc/ps`

14. (1 variantă corectă) Ce face comanda `id`?
    * a) Afișează procesele unui utilizator
    * b) Afișează ID-urile unui utilizator
    * c) Afișează UID-ul root
    * d) Creează un utilizator nou

15. (3 variante corecte) Ce shell-uri sunt disponibile de obicei pe un sistem Linux?
    * a) `/bin/bash`
    * b) `/bin/sh`
    * c) `/usr/bin/zsh`
    * d) `/dev/bashrc`
    * e) `/usr/local/bin/sudo`

16. (1 variantă corectă) Ce reprezintă `/dev/null`?
    * a) Un fișier pentru debug
    * b) O zonă de memorie temporară
    * c) Un fișier special care „înghite” orice date scrise în el
    * d) Spațiu liber nealocat

17. (2 variante corecte) Care sunt fișierele implicite în configurarea shell-ului Bash la autentificare?
    * a) `~/.bashrc`
    * b) `~/.profile`
    * c) `/etc/network`
    * d) `/etc/shadow`
    * e) `/etc/passwd`

18. (1 variantă corectă) Ce reprezintă caracterul `|` în shell?
    * a) Separator de argumente
    * b) Combinator de comenzi
    * c) Redirecționează ieșirea unei comenzi în intrarea alteia
    * d) Este un alias pentru `;`

19. (2 variante corecte) Care sunt avantaje ale formatului `systemd` față de SysVinit?
    * a) Timp de boot mai mare
    * b) Paralelizare a serviciilor
    * c) Jurnalizare nativă
    * d) Fără suport pentru multitasking
    * e) Necesită drivere binare

20. (1 variantă corectă) Ce face `ps aux | grep nginx`?
    * a) Pornește serviciul nginx
    * b) Afișează toate procesele nginx
    * c) Afișează informații de rețea
    * d) Afișează istoricul comenzilor nginx

21. (2 variante corecte) Cum poți opri temporar o interfață de rețea numită `eth0`?
    * a) `ip link set eth0 down`
    * b) `ifconfig eth0 stop`
    * c) `ifconfig eth0 down`
    * d) `networkctl stop eth0`
    * e) `nmcli down eth0`

22. (1 variantă corectă) Ce opțiune din `ss` afișează doar porturile deschise?
    * a) `-ltn`
    * b) `-an`
    * c) `-udp`
    * d) `-x -s`

23. (2 variante corecte) Comanda `uptime` oferă informații despre:
    * a) Cât timp este pornit sistemul
    * b) Temperatura procesorului
    * c) Numărul mediu de procese
    * d) Timpul de pornire al kernelului
    * e) IP-ul curent

24. (1 variantă corectă) Ce fișier este folosit de cron pentru task-urile utilizatorului root?
    * a) `/etc/crontab`
    * b) `/var/cron`
    * c) `~/.cron`
    * d) `/etc/shadow`

25. (2 variante corecte) Care fișiere sunt folosite în configurarea DNS local?
    * a) `/etc/hosts`
    * b) `/etc/resolv.conf`
    * c) `/etc/network/interfaces`
    * d) `/etc/dnsmasq.conf`
    * e) `/proc/sys/net/dns`

26. (1 variantă corectă) Cum poți seta o adresă IP statică în Ubuntu folosind Netplan?
    * a) În `/etc/netplan/*.yaml`
    * b) Cu `ip config`
    * c) În `/etc/network.d/interfaces`
    * d) Cu `sysctl -w`

27. (3 variante corecte) Ce comenzi sunt valide în Bash?
    * a) `for i in *; do echo $i; done`
    * b) `while true; do break; done`
    * c) `case $a in 1) echo unu;; esac`
    * d) `end`
    * e) `loop {}`

28. (1 variantă corectă) Ce tip de fișier este `ELF`?
    * a) Imagine disk
    * b) Fișier arhivă
    * c) Executabil pe Linux
    * d) Document criptat

29. (2 variante corecte) Ce funcții are `cron`?
    * a) Programează rulări automate
    * b) Rulează scripturi la boot
    * c) Rulează comenzi la intervale regulate
    * d) Monitorizează procesele
    * e) Deschide porturi în firewall

30. (1 variantă corectă) Ce face comanda `uname -r`?
    * a) Afișează versiunea completă a kernelului
    * b) Schimbă versiunea kernelului
    * c) Listează procesoarele
    * d) Afișează versiunea BIOS

