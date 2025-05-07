# Subiect Teoretic – Clasa a IX-a și a X-a (Nivel Avansat)

## Permisiuni și Atribute Speciale

**1.** Având următoarea listare a unor fișiere și directoare (obținută cu `ls -l`):

```bash
drwxrwxrwt 2 root   root    4096 10 apr 08:00 temp  
-rwxr-sr-x 1 user1  grup1   1024 10 apr 08:00 exec2  
-rwsr-xr-x 1 root   root    4096 10 apr 08:00 exec1  
-rwsr-sr-x 1 user1  grup1   2048 10 apr 08:00 exec3  
-rw-r--r-- 1 user2  user2   5120 10 apr 08:00 fil* e.txt  
lrwxrwxrwx 1 root   root       7 10 apr 08:00 link -> fil* e.txt  
```

Care **intrări** din listarea de mai sus au *cel puțin un* bit special (SUID, SGID sau sticky) setat? *(3 răspunsuri corecte)*

* a. `temp`
* b. `exec2`
* c. `exec1`
* d. `exec3`
* e. `fil* e.txt`
* f. `link`

**2.** Directorul `/tmp` are permisiunile `drwxrwxrwt`. Ce efect are bitul **sticky** (indicativ `t`) setat pe acest director? *(1 răspuns corect)*

* a. Orice utilizator poate șterge orice fișier din acel director.
* b. Doar proprietarul fișierului (sau root) poate șterge fișierul respectiv.
* c. Fișierele din director devin executabile automat.
* d. Toate fișierele noi create în director vor aparține utilizatorului root.

**3.** Ce se întâmplă la executarea unui fișier **executabil** care are bitul **setuid** activat (`s` în loc de `x` pentru utilizator în permisiuni)? *(1 răspuns corect)*

* a. Procesul lansat din acel fișier va rula cu UID-ul efectiv al proprietarului fișierului executabil.
* b. Utilizatorul care rulează fișierul devine proprietarul fișierului executabil.
* c. Fișierul executabil poate fi rulat doar de utilizatorul root.
* d. Bitul setuid nu are niciun efect asupra fișierelor executabile în Linux.

**4.** Ce efect are bitul **setgid** atunci când este setat pe un **director**? *(1 răspuns corect)*

* a. Toate fișierele și subdirectoarele nou create în acel director vor moșteni automat grupul deținător al directorului.
* b. Orice utilizator care intră în director primește temporar privilegiile grupului asociat directorului.
* c. Directorul poate fi accesat doar de membrii grupului respectiv.
* d. Bitul setgid pe director nu are niciun efect; se aplică doar fișierelor executabil* e.

**5.** Ce efect are bitul **setuid** dacă este setat pe un **director** în Linux? *(1 răspuns corect)*

* a. Toate fișierele create în acel director vor moșteni proprietarul (utilizatorul) directorului.
* b. Toate fișierele și directoarele din interior devin executabil* e.
* c. Directorul respectiv va ignora bitul setuid – pe Linux acesta nu produce efect pe directoar* e.
* d. Utilizatorii care accesează directorul capătă temporar UID 0 (root).

## Procese și Administrarea Proceselor

**6.** Avem următoarea ieșire parțială a comenzii `ps aux`:

```bash
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND  
bob       6789 99.0  1.0 111111 22222 pts/1    R    13:05   5:00 dd if=/dev/zero of=/dev/null  
alice     2345  0.2  5.0 567890 123456 ?      Sl   13:00   0:30 /usr/bin/python script.py  
root         1  0.0  0.1  12345  2345 ?       Ss   Jan01   1:23 /sbin/init  
```

Referindu-ne la procesul cu PID **6789**, care dintre următoarele afirmații sunt adevărate? *(2 răspunsuri corecte)*

* a. Procesul utilizează intensiv CPU (aproximativ 99%).
* b. Procesul rulează în fundal (fără terminal asociat).
* c. Comanda executată de proces este `dd if=/dev/zero of=/dev/null`.
* d. Procesul este deținut de utilizatorul `alice`.
* e. Procesul consumă mai multă memorie (MEM) decât procesul cu PID 2345.

**7.** În ieșirea comenzii `ps`, un proces având statutul **`Z`** (zombie) indică faptul că: *(1 răspuns corect)*

* a. Procesul consumă toată memoria RAM disponibilă.
* b. Procesul este unul suspendat (stopat temporar).
* c. Procesul și-a terminat execuția, dar încă are o intrare în tabelul de procese, așteptând ca părintele să preia codul său de terminar* e.
* d. Procesul rulează cu prioritate foarte scăzută (niceness mare).

**8.** Dacă executăm comanda `kill 1234` (fără a specifica parametri suplimentari sau semnalul explicit), ce semnal va fi trimis **implicit** procesului cu PID 1234? *(1 răspuns corect)*

* a. SIGKILL (9) – terminare forțată imediată.
* b. SIGTERM (15) – cerere de terminare grațioasă.
* c. SIGHUP (1) – întreruperea sesiunii/hangup.
* d. SIGSTOP (19) – oprire (stop) a execuției procesului.

**9.** Comanda `echo $$` executată într-un terminal Bash va afișa: *(1 răspuns corect)*

* a. PID-ul (Process ID) shell-ului curent (procesul Bash în execuție).
* b. Ultima variabilă de mediu setată în shell.
* c. Codul de eroare al ultimei comenzi executat* e.
* d. Două simboluri `$` pe ecran, fiind interpretate ca text literal.

## Sistem de Fișiere și Stocare

**10.** Considerați ieșirea (parțială) a comenzii `mount`:

```bash
/dev/sda2 on /               type ext4    (rw,relatime)  
/dev/sda1 on /boot           type vfat    (rw,relatime)  
tmpfs       on /run          type tmpfs   (rw,nosuid,nodev,size=...)\
```  

Care dintre afirmațiile următoare privind sistemele de fișiere montate sunt adevărate? *(2 răspunsuri corecte)*  

* a. Partiția rădăcină (`/`) este montată în mod **read-write** pe un sistem de fișiere de tip **ext4**.  
* b. Directorul `/boot` este montat de pe o partiție de tip **FAT/VFAT**.  
* c. Sistemul de fișiere `tmpfs` montat pe `/run` este stocat permanent pe hard disk.  
* d. Sistemul de fișiere de pe `/boot` este de tip **NTFS**.  

**11.** Avem următoarea ieșire a comenzii `lsblk`:  

```bash
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT  
sda      8:0    0 931.5G  0 disk   
├─sda1   8:1    0   500M  0 part /boot  
├─sda2   8:2    0   100G  0 part /  
└─sda3   8:3    0 830.5G  0 part /home  
sdb      8:16   0 465.8G  0 disk  
└─sdb1   8:17   0 465.8G  0 part /mnt/data  
sdc      8:32   1  14.9G  0 disk  
└─sdc1   8:33   1  14.9G  0 part /media/usb  
````

Care dintre următoarele afirmații despre configurația de stocare de mai sus sunt **adevărate**? *(2 răspunsuri corecte)*

* a. Discul `sda` are trei partiții, dintre care una este montată în rădăcina sistemului de fișiere (`/`).
* b. Partiția `sdb1` este montată în directorul `/mnt/data`.
* c. Discul `sdc` este un dispozitiv de stocare **interna** (non-removable).
* d. Există exact o partiție de swap în listar* e.

**12.** Se execută comenzile:

```bash
$ ln fil* e.txt hardlink.txt  
$ ls -i fil* e.txt hardlink.txt  
1234567 -rw-r--r-- 2 student student 1000 07 mai 14:00 fil* e.txt  
1234567 -rw-r--r-- 2 student student 1000 07 mai 14:00 hardlink.txt  
```

(pe aceeași linie de output apare același număr de inode pentru ambele intrări)

Care afirmații despre fișierele `fil* e.txt` și `hardlink.txt` sunt adevărate? *(2 răspunsuri corecte)*

* a. `hardlink.txt` și `fil* e.txt` referă același inode pe disc, deci ambele denumiri indică același fișier fizi* c.
* b. Ștergerea fișierului `fil* e.txt` va lăsa în continuare conținutul disponibil prin `hardlink.txt`.
* c. `hardlink.txt` este un link simbolic către `fil* e.txt`.
* d. Modificarea conținutului prin `hardlink.txt` nu va afecta fișierul `fil* e.txt`.

**13.** Referitor la **link-urile simbolice (symlink)** în Linux: care dintre afirmațiile de mai jos sunt adevărate? *(2 răspunsuri corecte)*

* a. Un link simbolic este indicat în listarea `ls -l` prin litera **`l`** la începutul permisiunilor.
* b. Dimensiunea (size) raportată a unui symlink reprezintă de fapt lungimea numelui țintă (calea către fișierul țintă).
* c. Un symlink are același inode ca fișierul către care pointează.
* d. Dacă fișierul țintă este șters, link-ul simbolic devine unul “dangling” (care nu mai pointează către un fișier valid).

**14.** Ce relație există între fișierele speciale `/dev/sda` și `/dev/sda1` pe un sistem Linux? *(1 răspuns corect)*

* a. `/dev/sda1` reprezintă **prima partiție** de pe discul reprezentat de `/dev/sda`.
* b. Sunt două denumiri pentru același dispozitiv fizi* c.
* c. `/dev/sda1` este primul disc din sistem, iar `/dev/sda` al doile* a.
* d. `/dev/sda` este o legătură simbolică către partiția `/dev/sda1`.

**15.** Fișierul special `/dev/null` are o utilitate importantă în sistem. Care este uzul principal al acestui fișier special? *(1 răspuns corect)*

* a. Stocarea temporară a datelor sensibile (un fel de “seif” al sistemului).
* b. Generarea de numere aleatoare pentru aplicații (ca sursă de entropie).
* c. Golirea (ignorarea) oricărei ieșiri redirecționate către el (”coș de gunoi” pentru output).
* d. Reprezintă dispozitivul de sunet implicit al sistemului.

**16.** Doriți să găsiți **toate fișierele mai mari de 100 MB** din directorul `/home`. Care dintre următoarele comenzi `find` este corectă și îndeplinește această cerință? *(1 răspuns corect)*

* a. `find /home -size +100M -type f`
* b. `find /home -size 100M`
* c. `find /home -filesize 100M+`
* d. `find /home -maxsize 100M -exec ls -lh {} \;`

## Structuri Hardware și Boot/EFI

**17.** Având următorul output parțial al comenzii `lspci`:

```bash
0a:00.0 Ethernet controller: Intel Corporation X722 for 1GbE  
0a:00.1 Ethernet controller: Intel Corporation X722 for 1GbE  
0a:00.2 Ethernet controller: Intel Corporation X722 for 1GbE  
0a:00.3 Ethernet controller: Intel Corporation X722 for 1GbE  
0b:00.0 Non-Volatile memory controller: Kingston Device 5017  
0c:00.0 Non-Volatile memory controller: Kingston Device 5017  
0d:00.0 VGA compatible controller: NVIDIA GPU MX230  
0e:00.0 VGA compatible controller: NVIDIA GPU MX230  
```

Pe baza informațiilor de mai sus, care configurație descrie **corect** numărul de dispozitive detectate (plăci de rețea, controllere de stocare NVMe și plăci grafice)? *(1 răspuns corect)*

* a. **4** plăci de rețea, **2** controllere NVMe, **2** plăci grafice
* b. **1** placă de rețea, **2** controllere NVMe, **2** plăci grafice
* c. **4** plăci de rețea, **4** controllere NVMe, **2** plăci grafice
* d. **2** plăci de rețea, **2** controllere NVMe, **1** placă grafică

**18.** Fragmentul următor este output-ul comenzii `efibootmgr -v` pe un sistem cu boot UEFI:

```bash
BootCurrent: 0001  
BootOrder: 0001,0002,0003  
Boot0001* Ubuntu	HD(1,GPT,...)/File(\EFI\Ubuntu\shimx64.efi)  
Boot0002* Windows Boot Manager	HD(2,GPT,...)/File(\EFI\Microsoft\Boot\bootmgfw.efi)  
Boot0003* UEFI: DVD/CD ROM...  
```

Conform informațiilor de mai sus, care intrare de boot este setată să pornească implicit prima? *(1 răspuns corect)*

* a. **Ubuntu**
* b. **Windows Boot Manager**
* c. **UEFI: DVD/CD ROM**
* d. Niciuna – sistemul folosește modul Legacy/BIOS, nu UEFI.

**19.** Cum puteți verifica rapid dacă un sistem Linux a fost pornit în modul **UEFI** sau în modul **Legacy BIOS**? *(1 răspuns corect)*

* a. Prin comanda `uname -m` – dacă rezultatul este `efi`, atunci e UEFI.
* b. Verificând existența directorului `/sys/firmware/efi` – dacă există, sistemul rulează în modul UEFI.
* c. Dacă există fișierul `/boot/uefi.conf` modul UEFI este activ.
* d. Prin rularea `efibootmgr` – dacă comanda nu dă eroare, sistemul este BIOS.

**20.** Comanda `uname -a` afișează informații despre sistemul în execuți* e. Din exemplul de mai jos:

```bash
Linux host123 5.15.0-50-generic #56-Ubuntu SMP Tue Sep 20 ... x86_64 GNU/Linux  
```

Selectați informațiile care **pot fi deduse direct** din acest output `uname -a`: *(3 răspunsuri corecte)*

* a. Versiunea kernel-ului este `5.15.0-50-generic`.
* b. Numele gazdă (hostname) al sistemului este `host123`.
* c. Arhitectura procesorului este de 64 de biți (x86\_64).
* d. Sistemul de operare instalat este **Ubuntu 20.04 LTS**.

## Comenzi Avansate și Interacțiuni Shell

**21.** Comanda `sudo echo 1 > /proc/sys/vm/swappiness` este executată de un utilizator pentru a modifica un parametru de kernel, însă nu are efectul dorit (nu schimbă valoarea). Ce comenzi alternative ar putea realiza cu succes aceași lucru, adică să scrie valoarea **1** în fișierul respectiv? *(2 răspunsuri corecte)*

* a. `echo 1 | sudo tee /proc/sys/vm/swappiness`
* b. `sudo sh -c "echo 1 > /proc/sys/vm/swappiness"`
* c. `sudo echo 1 | sudo tee /proc/sys/vm/swappiness`
* d. `echo 1 > /proc/sys/vm/swappiness` (fără `sudo`)

**22.** Dacă dorim să ne asigurăm că **a doua comandă** dintr-o secvență de două comenzi se execută **chiar și în cazul în care prima comandă eșuează**, care operator sau construct este potrivit? *(2 răspunsuri corecte)*

* a. Folosirea operatorului `&&` între comenzi – ex: `comanda1 && comanda2`
* b. Folosirea operatorului `||` între comenzi – ex: `comanda1 || comanda2`
* c. Separarea celor două comenzi cu `;` – ex: `comanda1 ; comanda2`
* d. Rularea celor două comenzi într-un subshell – ex: `(comanda1; comanda2)`

**23.** Într-un pipeline shell de forma `comanda1 | comanda2`, care afirmații sunt adevărate? *(2 răspunsuri corecte)*

* a. **Stdout**-ul (ieșirea standard) a `comanda1` este conectat la **stdin**-ul (intrarea standard) al `comanda2`.
* b. Cele două comenzi rulează în paralel (concurent), `comanda1` producând date pe care `comanda2` le prelucrează pe măsură ce le primeșt* e.
* c. `comanda2` va începe execuția **doar după** ce `comanda1` și-a încheiat complet execuți* a.
* d. Codul de ieșire (exit status) al întregului pipeline va fi întotdeauna cel al primei comenzi din lanț.

**24.** Care este diferența majoră dintre folosirea ghilimelelor duble **"`"`** și a ghilimelelor simple **`'`** în scripting Bash? *(1 răspuns corect)*

* a. Ghilimelele duble permit interpretarea (expansiunea) variabilelor și secvențelor speciale în interior, pe când ghilimelele simple **nu** permit interpretarea acestor* a.
* b. Nu există nicio diferență, ambele tipuri de ghilimele se comportă la fel în Bash.
* c. Ghilimelele simple permit includerea spațiilor în string, ghilimelele duble nu.
* d. Ghilimelele duble sunt folosite doar pentru a cita texte care conțin ghilimele simpl* e.

**25.** Ce variabilă specială din shell conține **codul de retur (exit status)** al ultimei comenzi executate? *(1 răspuns corect)*

* a. `$?`
* b. `$$`
* c. `$!`
* d. `$0`

**26.** Analizați următorul script Bash și rezultatul executării sale:

```bash
#!/bin/bash  
for i in {1..3}; do  
    if [ $i -lt 3 ]; then  
        echo -n "$i, "  
    else  
        echo "$i."  
    fi  
done  
```

Care va fi ieșirea produsă de acest script în momentul rulării? *(1 răspuns corect)*

* a. `1, 2, 3.`
* b. `1 2 3`
* c. `1, 2, 3`
* d. `123.`

**27.** Următorul fragment reprezintă trei intrări din fișierul `/etc/passwd` al unui sistem Linux:

```bash
root:x:0:0:root:/root:/bin/bash  
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin  
student:x:1000:1000:Elev,,,:/home/student:/bin/bash  
```

Care utilizator **nu are acces interactiv la o sesiune de shell** (login interactiv) pe baza acestor informații? *(1 răspuns corect)*

* a. `root`
* b. `daemon`
* c. `student`
* d. Niciunul – toți au acces shell.

## Administrarea Pachetelor și Formate Binare

**28.** Fragment din ieșirea comenzii `dpkg -l` pe un sistem Debian/Ubuntu:

```bash
ii  bash        5.0-6ubuntu1    amd64  GNU Bourne Again SHell  
rc  bind9       1:9.11.16...    amd64  Internet Domain Name Server  
ii  coreutils   8.30-3ubuntu2   amd64  GNU core utilities  
un  docker      <none>          <none> (no description available)  
```

Conform listării de mai sus, care pachete apar ca **instalate** în sistem (status `ii` în prima coloană)? *(2 răspunsuri corecte)*

* a. `bash`
* b. `bind9`
* c. `coreutils`
* d. `docker`

**29.** Comanda `file` a fost rulată pe mai multe fișiere, cu rezultatele de mai jos:

```bash
$ file prog1.sh  
prog1.sh: Bourne-Again shell script, ASCII text executable  

$ file imag* e.png  
imag* e.png: PNG image data, 800 x 600, 8-bit/color RGBA, non-interlaced  

$ file prog2  
prog2: ELF 64-bit LSB executable, x86-64, dynamically linked ...  

$ file libdat* a.so  
libdat* a.so: ELF 64-bit LSB shared object, x86-64, dynamically linked ...  
```

Care dintre fișierele de mai sus pot fi rulate **direct ca programe executabile** în terminal (fără a specifica un interpret în mod explicit)? *(2 răspunsuri corecte)*

* a. `prog1.sh`
* b. `imag* e.png`
* c. `prog2`
* d. `libdat* a.so`

**30.** În scripting, linia specială de la începutul unui fișier executabil, precum `#!/usr/bin/env bash`, are rolul de: *(1 răspuns corect)*

* a. Indica sistemului care interpret de comenzi să fie folosit pentru a executa scriptul (de exemplu, Bash).
* b. Marca începutul unui comentariu și nu este procesată în niciun fel.
* c. Specifica opțiuni de compilare pentru script, dacă este cazul.
* d. Împiedica executarea scriptului de către utilizatorii neprivilegiați.

---
