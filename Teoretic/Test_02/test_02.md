### **Subiect teoretic – Nivel avansat (clasele IX–X)**

* **Timp recomandat: 30 de minute**
* **Fiecare întrebare conține 1, 2 sau 3 variante corecte, indicate în cerință.**

---

1. (2 variante corecte) Ce tipuri de fișiere pot fi identificate în Linux printr-un caracter special în prima coloană a comenzii `ls -l`?
   * a) `d` – fișier de tip device
   * b) `l` – link simbolic
   * c) `c` – character device
   * d) `x` – executabil
   * e) `f` – fișier fix

2. (1 variantă corectă) Ce se întâmplă dacă un fișier are permisiuni `---rwx--x` și este deținut de un alt utilizator decât cel curent?
   * a) Poți citi fișierul dacă ești în același grup
   * b) Poți executa fișierul dacă ești în același grup
   * c) Nu poți face nimic cu fișierul
   * d) Îl poți edita

3. (2 variante corecte) Ce comenzi afişează în mod corect dimensiunea unui fişier în octeţi?
   * a) `du -b`
   * b) `stat -c %s`
   * c) `ls -l`
   * d) `file`
   * e) `wc -c`

4. (1 variantă corectă) Ce valoare returnează comanda `echo $?` imediat după rularea unui script Bash?
   * a) PID-ul ultimului proces
   * b) UID-ul utilizatorului curent
   * c) Codul de ieșire (exit cod* e) al ultimei comenzi
   * d) Numărul argumentelor scriptului

5. (3 variante corecte) Ce mecanisme de izolare sunt folosite în containerele Linux moderne (ex: Docker)?
   * a) cgroups
   * b) SELinux
   * c) systemd
   * d) namespaces
   * e) chroot

6. (2 variante corecte) Ce efecte are bitul `sticky` când este setat pe un director?
   * a) Orice fișier poate fi șters doar de proprietarul său
   * b) Fișierele devin read-only
   * c) Oricine poate edita fișierele, dar nu le poate șterge
   * d) Numai `root` poate șterge fișiere din acel director

7. (1 variantă corectă) Ce înseamnă o valoare `nice` negativă (ex: -5) pentru un proces?
   * a) Procesul este blocat
   * b) Procesul primește prioritate scăzută
   * c) Procesul va fi terminat imediat
   * d) Procesul primește o prioritate mai mare

8. (2 variante corecte) Care comenzi pot lista toate fișierele, inclusiv cele ascunse, dintr-un director?
   * a) `ls -a`
   * b) `ls -h`
   * c) `ls -al`
   * d) `ls --hidden`
   * e) `ls -i`

9. (1 variantă corectă) Ce semnifică simbolul `.` în cadrul comenzilor shell?
   * a) Directorul root
   * b) Directorul anterior
   * c) Directorul curent
   * d) Orice fișier ascuns

10. (2 variante corecte) Ce formate de pachete sunt utilizate în mod frecvent în distribuții Linux?
    * a) `.zip`
    * b) `.rpm`
    * c) `.deb`
    * d) `.tar`
    * e) `.gz`

11. (2 variante corecte) Ce comenzi pot afișa pachetele instalate pe un sistem Debian-based?
    * a) `dpkg -l`
    * b) `ls /var/lib/apt`
    * c) `apt list --installed`
    * d) `apt search *`
    * e) `dpkg --status`

12. (1 variantă corectă) Ce rol are fișierul `/etc/resolv.conf`?
    * a) Stochează parolele criptate
    * b) Listează porturile deschise în sistem
    * c) Conține adresele serverelor DNS
    * d) Specifică variabile de mediu pentru user

13. (3 variante corecte) Ce comenzi pot fi folosite pentru redirecționarea ieșirii în Bash?
    * a) `>`
    * b) `>>`
    * c) `|`
    * d) `<`
    * e) `&>`

14. (2 variante corecte) Ce înseamnă simbolul `&` la finalul unei comenzi în shell?
    * a) Execută comanda în fundal
    * b) Adaugă permisiunea de execuție
    * c) Este utilizat pentru redirecționare completă
    * d) Este folosit pentru subshell

15. (1 variantă corectă) Comanda `chmod 4755 program.sh` are ca efect:
    * a) Activarea bitului sticky
    * b) Activarea permisiunii SUID
    * c) Ștergerea fișierului
    * d) Adăugarea dreptului de execuție pentru toți

16. (2 variante corecte) Într-un sistem de fișiere cu scheme GPT, ce avantaje avem?
    * a) Suport pentru până la 4 partiții primare
    * b) Suport pentru peste 2 TB spațiu
    * c) Compatibilitate cu BIOS vechi
    * d) Redundanță a tabelei de partiții

17. (1 variantă corectă) Comanda `tar -czvf arhiva.tar.gz folder/` face:
    * a) Dezarhivează folderul
    * b) Copiază folderul în `/tmp`
    * c) Creează o arhivă comprimată cu gzip
    * d) Listează conținutul folderului

18. (2 variante corecte) Care sunt funcțiile unui manager de boot (ex: GRU* b)?
    * a) Initiază rețeaua la pornire
    * b) Încarcă sistemul de operare
    * c) Permite selectarea între mai multe OS-uri
    * d) Activează toate partițiile montate

19. (3 variante corecte) Ce sunt fișierele `socket`, `pipe` și `FIFO`?
    * a) Tipuri de fișiere speciale
    * b) Fișiere stocate în `/dev`
    * c) Mijloace de comunicare între procese
    * d) Structuri din memoria RAM
    * e) Necesită permisiuni de execuție pentru a fi folosite

20. (2 variante corecte) Ce comenzi Bash pot opri complet sistemul?
    * a) `poweroff`
    * b) `halt`
    * c) `exit`
    * d) `reboot`
    * e) `shutdown -h now`

21. (1 variantă corectă) Care comandă creează un nou cont de utilizator?
    * a) `newuser`
    * b) `adduser`
    * c) `create-user`
    * d) `userctl`

22. (2 variante corecte) Ce opțiuni pot fi folosite cu `find` pentru a găsi fișiere mai vechi de 7 zile?
    * a) `-mtime +7`
    * b) `-atime -7`
    * c) `-ctime +7`
    * d) `-days 7`
    * e) `-older 7`

23. (1 variantă corectă) Ce comandă creează o variabilă globală într-o sesiune Bash?
    * a) `let VAR=123`
    * b) `define VAR=123`
    * c) `export VAR=123`
    * d) `setglobal VAR 123`

24. (2 variante corecte) Ce comenzi pot lista porturile deschise ale sistemului?
    * a) `netstat -tuln`
    * b) `ss -tuln`
    * c) `lsof -c`
    * d) `ps aux`
    * e) `ping`

25. (1 variantă corectă) Care este rolul unui daemon în Linux?
    * a) Execută sarcini repetitive în fundal
    * b) Rulează fișiere executabile
    * c) Deschide conexiuni grafice
    * d) Stochează parolele

26. (3 variante corecte) Ce afirmații despre `/proc` sunt adevărate?
    * a) Este un sistem de fișiere virtual
    * b) Conține date despre procese
    * c) Este utilizat de kernel pentru managementul pachetelor
    * d) Conține fișiere binare executabile
    * e) Poate fi folosit pentru a modifica setări de runtime

27. (2 variante corecte) Ce comenzi pot returna spațiul liber pe partiții?
    * a) `df -h`
    * b) `du -sh`
    * c) `lsblk`
    * d) `free -m`
    * e) `parted`

28. (1 variantă corectă) Ce comandă setează parola unui utilizator?
    * a) `passwd nume_utilizator`
    * b) `setpass nume`
    * c) `chpass nume`
    * d) `passwd -c nume`

29. (2 variante corecte) Ce comenzi pot afișa informații despre memoria RAM?
    * a) `free -h`
    * b) `top`
    * c) `htop`
    * d) `ps -aux`
    * e) `df -h`

30. (1 variantă corectă) Ce fișier conține grupurile definite în sistem?
    * a) `/etc/groups`
    * b) `/etc/group`
    * c) `/var/group`
    * d) `/usr/group`
