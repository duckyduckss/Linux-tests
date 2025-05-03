# Subiect teoretic – Întrebări grilă (clasele IX–X)

1. Permisiunile fișierului `exemplu.sh` sunt afișate de comanda `ls -l` ca `-rwxr-x--x`. Ce înseamnă acest set de permisiuni?
   a) Proprietarul fișierului are permisiuni de citire, scriere și executare.
   b) Grupul are permisiuni de citire și executare.
   c) Alți utilizatori (others) au permisiune de executare.
   d) Fișierul `exemplu.sh` este un director.
   e) Notația numerică echivalentă a acestor permisiuni este 751.

2. Care dintre următoarele afirmații despre permisiunile speciale în Linux sunt adevărate?
   a) Bitul SUID (setuid) face ca un program executabil să ruleze cu privilegiile utilizatorului proprietar al fișierului.
   b) Bitul SGID setat pe un director face ca fișierele nou create în acel director să aparțină grupului acelui director.
   c) Bitul "sticky" setat pe un fișier executabil asigură păstrarea sa în memorie pentru porniri ulterioare mai rapide.
   d) Bitul "sticky" setat pe un director permite doar proprietarului fișierelor (sau root) să le șteargă, chiar dacă alți utilizatori au drept de scriere în acel director.
   e) Permisiunile speciale se notează simbolic prin literele `s` (pentru SUID/SGID) și `t` (pentru sticky).

3. Pentru a copia **toate** fișierele cu extensia `.txt` din directorul curent în directorul `/backup/docs`, care dintre următoarele comenzi sunt corecte?
   a) `cp *.txt /backup/docs`
   b) `cp ./*.txt /backup/docs/`
   c) `cp -r *.txt /backup/docs`
   d) `cp *.txt /backup/docs/`
   e) `cp /backup/docs *.txt`

4. În listarea detaliată (`ls -l`) a unui director, primul caracter al uneia dintre intrări este `l`. Ce tip de fișier indică această literă?
   a) Legătură simbolică (symlink)
   b) Fișier special de tip bloc (block device)
   c) Fișier special de tip caracter (character device)
   d) Director (folder)
   e) Fișier obișnuit (regular file)

5. Care dintre următoarele **nu** este un tip de fișier recunoscut de sistemele de operare de tip UNIX?
   a) Fișier obișnuit (regular file)
   b) Director (directory)
   c) Legătură simbolică (symlink)
   d) Fișier cu permisiune setuid
   e) Fișier special de tip bloc (block device)
   f) Fișier special de tip caracter (character device)

6. Ce comandă afișează tipul unui fișier (de ex. text, binar, formatul) pe baza conținutului acestuia, și nu doar pe baza extensiei numelui?
   a) `file`
   b) `type`
   c) `find`
   d) `stat`
   e) `info`

7. Care dintre următoarele comenzi afișează calea (path-ul) completă a directorului de lucru curent?
   a) `pwd`
   b) `whoami`
   c) `cd`
   d) `echo $PWD`
   e) `path`

8. Pentru a căuta recursiv șirul de caractere "error" într-un director și în subdirectoarele sale, care comandă este corectă?
   a) `grep "error" *.txt`
   b) `grep -r "error" .`
   c) `find . -text "error"`
   d) `grep -R "error" /home/user`
   e) `search "error" / -r`

9. Care dintre următoarele comenzi va afișa ultimele 5 linii ale fișierului `log.txt`?
   a) `tail -5 log.txt`
   b) `tail -n 5 log.txt`
   c) `head -5 log.txt`
   d) `tail log.txt -5`
   e) `tail log.txt | head -5`

10. Care director din sistemul Linux conține fișierele de configurare globală ale sistemului (setările pentru servicii și programe)?
    a) `/etc`
    b) `/bin`
    c) `/home`
    d) `/var`
    e) `/config`

11. Selectați afirmațiile adevărate despre structura sistemului de fișiere în Linux:
    a) Directorul rădăcină al sistemului este reprezentat prin simbolul `/`.
    b) Simbolul `~` (tilde) reprezintă directorul home al utilizatorului curent.
    c) `..` se referă la directorul curent.
    d) `/usr` este un subdirector în directorul rădăcină (root).
    e) Directoarele `/bin` și `/usr/bin` conțin, în general, fișiere executabile.

12. Care dintre următoarele comenzi va monta imaginea ISO `disc.iso` în directorul `/mnt/cdrom`?
    a) `mount disc.iso /mnt/cdrom`
    b) `mount -o loop disc.iso /mnt/cdrom`
    c) `mount -t iso9660 disc.iso /mnt/cdrom`
    d) `mount /mnt/cdrom disc.iso`
    e) `mount --bind disc.iso /mnt/cdrom`

13. Fișierul de configurare `/etc/fstab` are rolul de a:
    a) Defini sistemele de fișiere care se montează automat la pornirea sistemului.
    b) Configura permisiunile implicite pentru fișierele noi create pe disc.
    c) Păstra informații despre dispozitive, puncte de montare și opțiunile de montare a sistemelor de fișiere.
    d) Lista toate dispozitivele hardware conectate la sistem.
    e) Configura parametrii de rețea ai calculatorului.

14. Într-o distribuție Linux Ubuntu (bazată pe Debian), care comandă se folosește pentru a actualiza lista de pachete disponibile de la sursele de software configurate?
    a) `apt-get update`
    b) `apt-get upgrade`
    c) `apt update`
    d) `apt upgrade`
    e) `apt-get dist-upgrade`

15. Care dintre următoarele afirmații despre gestionarea pachetelor software în Linux sunt adevărate?
    a) Pachetele cu extensia `.deb` sunt specifice distribuțiilor bazate pe Debian (ex: Ubuntu, Linux Mint).
    b) Comanda `dpkg -i pachet.deb` instalează pachetul `.deb` specificat pe sistem.
    c) Distribuțiile Fedora și CentOS folosesc pachete în format `.rpm`.
    d) Comanda `apt-get remove nume_pachet` elimină pachetul specificat, dar păstrează fișierele sale de configurare.
    e) `yum` este un manager de pachete folosit în distribuțiile bazate pe Debian.

16. Identificați componentele principale ale arhitecturii **Von Neumann**:
    a) Unitatea Centrală de Procesare (CPU).
    b) O memorie comună pentru stocarea atât a datelor, cât și a instrucțiunilor.
    c) Dispozitive de intrare/ieșire (I/O).
    d) Hard disk extern (unitate de stocare USB).
    e) Magistrale (bus-uri) de interconectare între componente.

17. Care dintre următoarele afirmații despre memorie sunt adevărate?
    a) RAM-ul este o memorie volatilă (își pierde conținutul la oprirea alimentării).
    b) ROM-ul poate fi modificat (scris) de procesor la fel de ușor ca RAM-ul în timpul funcționării normale.
    c) Memoria cache de nivel 1 (L1) a procesorului este de obicei mai rapidă, dar are o capacitate mult mai mică decât memoria RAM.
    d) Unitatea SSD este un exemplu de memorie nevolatilă.
    e) Registrele interne ale procesorului sunt mai lente decât memoria principală (RAM).

18. Care componente hardware sunt implicate direct în executarea instrucțiunilor (rularea efectivă) ale unui program?
    a) CPU (procesorul central)
    b) Memoria RAM
    c) Placa video (GPU)
    d) Hard disk-ul
    e) Sursa de alimentare (PSU)

19. Care dintre următoarele dispozitive sunt considerate **periferice de intrare** (input) ale unui sistem de calcul?
    a) Tastatura
    b) Monitorul
    c) Mouse-ul
    d) Imprimanta
    e) Scanner-ul

20. În sistemele de operare Linux moderne (ex: distribuții recente Ubuntu/Fedora), procesul cu PID 1 este:
    a) `init` (procesul Init SysV)
    b) `systemd`
    c) `grub`
    d) `bash`
    e) (Niciunul – numerotarea proceselor începe de la 0)

21. Care dintre următoarele comenzi poate fi folosită pentru a termina (închide) un proces, cunoscând PID-ul acestuia?
    a) `kill PID`
    b) `end PID`
    c) `terminate PID`
    d) `kill -9 PID`
    e) `stop PID`

22. Selectați afirmațiile adevărate despre procese și priorități în Linux:
    a) Fiecare proces are un identificator unic de proces (PID).
    b) Un proces copil (child) moștenește variabilele de mediu ale procesului părinte la momentul creării.
    c) Un proces cu o valoare de nice mai mare (de exemplu 19) are **prioritate mai mare** de execuție decât un proces cu valoare nice mai mică (de exemplu 0).
    d) Comanda `nice` poate fi folosită pentru a lansa un proces cu un nivel de prioritate (niceness) diferit față de valoarea implicită.
    e) Doar utilizatorul root poate schimba prioritatea (valoarea de nice) a unui proces în execuție folosind comanda `renice`.

23. Ce fișier de sistem conține informațiile despre conturile de utilizator local (nume, UID, GID principal, director home, shell implicit etc.)?
    a) `/etc/passwd`
    b) `/etc/shadow`
    c) `/etc/users`
    d) `/etc/group`

24. Selectați afirmațiile adevărate despre conturile de utilizator în Linux:
    a) Utilizatorul `root` are UID 0 și privilegii administrative complete.
    b) Un utilizator obișnuit poate face parte din mai multe grupuri simultan.
    c) Fișierul `/etc/shadow` conține parolele utilizatorilor stocate în format criptat (hash).
    d) Un utilizator obișnuit poate schimba parola altui utilizator folosind comanda `passwd nume_utilizator`.
    e) Comanda `usermod` permite modificarea proprietăților (de exemplu grupul principal sau shell-ul de login) ale unui cont de utilizator existent.

25. Cum sunt accesate argumentele poziționale într-un script Bash (presupunând că scriptul este apelat cu argumente în linia de comandă)?
    a) `$1`, `$2`, `$3`, ... reprezintă argumentele poziționale individuale (primul argument, al doilea, al treilea, etc.).
    b) `$@` reprezintă lista tuturor argumentelor primite, fiecare element păstrat separat.
    c) `$0` reprezintă numele scriptului (așa cum a fost apelat).
    d) `$*` reprezintă toate argumentele primite, combinate într-un singur șir.
    e) `$#` reprezintă numărul de argumente cu care a fost apelat scriptul.

26. Ce trebuie să conțină prima linie a unui script shell (bash) pentru a specifica interpretorul cu care va fi executat scriptul?
    a) Un comentariu obișnuit care descrie ce face scriptul.
    b) Caracterele `#!` urmate de calea absolută către interpretor (exemplu: `#!/bin/bash`).
    c) Numele scriptului încadrat între paranteze drepte `[]`.
    d) O linie care începe cu cuvântul cheie `shell:` urmat de numele interpretorului dorit.

27. Cum poate fi făcut executabil un script Bash numit `script.sh`?
    a) Prin acordarea dreptului de executare folosind comanda `chmod +x script.sh`.
    b) Prin schimbarea extensiei fișierului din `.sh` în `.exe`.
    c) Prin adăugarea directorului în care se află scriptul în variabila de mediu PATH sau prin rularea directă a scriptului specificând calea către el (ex: `./script.sh`).
    d) Prin adăugarea cuvântului `exec` la începutul fișierului de script.

28. Care fișier de sistem conține parolele utilizatorilor (stocate în formă criptată) pe un sistem Linux modern?
    a) `/etc/passwd`
    b) `/etc/shadow`
    c) `/etc/security`
    d) `/etc/secret`

29. Care dintre următoarele asocieri între fișier de configurare și funcția sa sunt corecte?
    a) `/etc/hosts` – stocarea mapărilor statice dintre nume de gazdă (hostname) și adrese IP.
    b) `/etc/fstab` – configurarea sistemelor de fișiere care se montează automat la pornirea sistemului (boot).
    c) `/etc/apt/sources.list` – lista depozitelor de pachete software pentru managerul de pachete APT.
    d) `/etc/shadow` – listarea serviciilor și demonilor de sistem care pornesc automat la boot.
    e) `/etc/crontab` – programarea execuției periodice a unor comenzi (automatizare task-uri).

30. Ce comandă poate schimba proprietarul (userul proprietar) al fișierului `document.txt` la utilizatorul `mihai`?
    a) `chmod mihai document.txt`
    b) `chown mihai document.txt`
    c) `chown mihai:mihai document.txt`
    d) `chgrp mihai document.txt`
    e) `usermod -o document.txt mihai`
