# Olimpiadă Linux – Set de 10 Subiecte (Clasele 9–10)

**Notă:** Toate subiectele sunt 100% practice (fără scripting Bash) și pot fi rezolvate în maximum 2 ore (examen open-book). Fiecare subiect are mai multe cerințe (subpuncte) cu punctaj variat, totalizând 10 puncte pe subiect. Se testează cunoștințe esențiale de administrare Linux: manipulare fișiere/directoare, permisiuni, utilizatori, procesare text, procese, comenzi de monitorizare, spațiu pe disc, memorie, informații hardware, sortări, numărări, redirecționări și one-linere avansate.

## \[10p] Proba 1

\[3p] (a) Creați următoarea structură de directoare și fișiere (ierarhia pleacă din directorul `MusicLibrary`):

```
📂 MusicLibrary  
├── 📂 Rock  
│   ├── 📂 Classic  
│   │   ├── Beatles.txt  
│   │   └── Queen.pdf  
│   ├── Playlist.pdf  
│   └── (alte fișiere/directoare dacă este cazul)  
├── 📂 Pop  
│   ├── 📂 90s  
│   │   ├── Madonna.txt  
│   │   └── MJ.pdf  
│   ├── chart_hits.txt  
│   └── (alte fișiere/directoare dacă este cazul)  
└── 📂 Favorites  
```

\[1p] (b) Folosind o singură comandă, aflându-vă în directorul **“MusicLibrary”**, creați în directorul **“Rock”** un fișier ascuns numit **“.Setlist”**, care să conțină textul `Best of Rock`.

\[2p] (c) Copiați **toate** fișierele cu extensia `.txt` din întreaga ierarhie **“MusicLibrary”** în interiorul directorului **“Favorites”**. (Toate fișierele `.txt` din subdirectoare trebuie să ajungă în `Favorites`.)

\[4p] (d) Creați un nou director numit **“NewAlbums”** în cadrul directorului **“Pop”**. În directorul **“NewAlbums”**, creați 50 de fișiere goale cu numele de forma `song_NUM`, unde `NUM` este un număr de la **1** la **50** (ex: `song_1`, `song_2`, ..., `song_50`). Folosiți un one-liner sau o comandă cu **expansiune** pentru a genera toate fișierele într-o singură operație.

## \[10p] Proba 2

\[3p] (a) Creați o arhivă de tip tar (necomprimată) numită **`etc_conf.tar`**, care să conțină **toate** fișierele cu extensia `.conf` din directorul **`/etc`** (includeți toate subdirectoarele lui `/etc`). Arhiva trebuie să păstreze structura de directoare originală.

\[3p] (b) Adăugați fișierul **`/etc/hosts`** în arhiva creată la punctul anterior, **fără a recrea arhiva de la zero** (arhiva existentă trebuie actualizată/completată cu acest fișier nou).

\[2p] (c) Comprimați arhiva rezultată folosind `gzip`, obținând fișierul **`etc_conf.tar.gz`**. (Arhiva comprimată trebuie să conțină toate fișierele `.conf` și fișierul `hosts` adăugat.)

\[2p] (d) Afișați conținutul arhivei **`etc_conf.tar.gz`** (lista fișierelor din interiorul ei) **fără** a o decomprima pe disc.

## \[10p] Proba 3

\[2p] (a) Afișați dimensiunea totală a întregii ierarhii a directorului **`/var`** (toate fișierele și subdirectoarele), în format human-readable.

\[3p] (b) Creați un fișier numit **`repeat.txt`** care să conțină linia **“LinuxRocks!”** de **1000** de ori. (Toată linia repetată de 1000 de ori, fiecare apariție pe un rând nou.)

\[3p] (c) Afișați numărul de apariții ale caracterului **“a”** în fișierul **`/etc/passwd`**. (Conteorizarea tuturor literelor “a” din fișier.)

\[2p] (d) Afișați pe ecran informații despre memoria **RAM** și memoria **swap** ale sistemului, în **MB**. (De exemplu, totalul și disponibilul pentru RAM și swap, în format ușor de citit.)

## \[10p] Proba 4

\[1p] (a) Creați un utilizator nou cu numele **`delta`**.

\[2p] (b) Schimbați shell-ul implicit al utilizatorului **`delta`** la **`/bin/zsh`**. (După modificare, autentificarea ca `delta` ar trebui să deschidă un shell Zsh.)

\[3p] (c) Autentificați-vă ca utilizatorul **`delta`** și creați un fișier numit **`secret_file`** în directorul home al acestuia. Modificați permisiunile fișierului astfel încât utilizatorul care îl deține (owner) să aibă **drepturi complete** asupra lui (citire, scriere și executare), grupul care îl deține să poată **scrie** în el (dar fără alte permisiuni), iar ceilalți utilizatori să îl poată **executa** (fără alte permisiuni).

\[4p] (d) Tot ca utilizatorul **`delta`**, schimbați proprietarul (owner-ul) fișierului **`secret_file`** la utilizatorul **`root`**. (Asigurați-vă că operația reușește și verificați noul proprietar al fișierului.)

## \[10p] Proba 5

\[2p] (a) Afișați **toate procesele** de pe sistem, împreună cu PID-urile lor, într-o formă arborescentă (procesul părinte și procesele copil indentate în ierarhie).

\[3p] (b) Afișați, pentru fiecare proces lansat de utilizatorul **`root`**, următoarele atribute: **PID-ul**, **PPID-ul** (PID-ul procesului părinte), utilizatorul care a lansat procesul și comanda cu care a fost pornit procesul. (Procesele root listate individual cu informațiile cerute.)

\[2p] (c) Afișați toate **PID-urile** ale căror **PPID** (PID părinte) este egal cu **1**. (Cu alte cuvinte, listează PID-urile proceselor care au drept părinte procesul init/systemd.)

\[1p] (d) Afișați PID-ul **shell-ului curent** (procesul shell în care rulați comenzile).

\[2p] (e) Afișați de cât timp este pornit sistemul (uptime-ul sistemului) într-o formă lizibilă pentru om. (Indicați durata de funcționare a sistemului de la ultima pornire.)

## \[10p] Proba 6 *(se folosește fișierul **employees.csv** cu \~30 de angajați; câmpurile sunt: ID, Nume, Departament, Salariu, Email, separate prin virgulă)*

\[2p] (a) Afișați toți angajații care lucrează în departamentul **„IT”**. (Listează liniile din *employees.csv* al căror câmp Departament este IT.)

\[3p] (b) Sortați angajații din *employees.csv* după **salariu** în ordine descrescătoare și afișați **primii 5** angajați din lista sortată (întregul rând sau cel puțin numele și salariul fiecărui angajat din top 5).

\[2p] (c) Afișați **numărul de angajați** al căror email se termină cu domeniul **„@gmail.com”**. (Adresa de email este ultimul câmp din *employees.csv*. Se cere practic câți angajați au adresa pe Gmail.)

\[3p] (d) Extrageți **doar Numele și Email-ul** fiecărui angajat din *employees.csv* și salvați aceste informații într-un fișier nou numit **`emails.txt`**, sub forma `Nume - Email` (câte un angajat pe linie). Lista finală din `emails.txt` trebuie să conțină atâtea linii câți angajați, fiecare linie având nume și adresa de email separate prin `-`.

## \[10p] Proba 7 *(se folosește fișierul **employees.csv*** – continuare analiză angajați)

\[2p] (a) Calculați **suma totală a salariilor** tuturor angajaților din *employees.csv*. (Rezultatul este un număr – suma valorilor din coloana Salariu.)

\[3p] (b) Calculați **salariul mediu** al angajaților (valoarea medie/aritmetică a tuturor salariilor). Indicați rezultatul cu eventuale zecimale sau rotunjit, după preferință.

\[3p] (c) Afișați câți angajați lucrează în **fiecare departament**. (Pentru fiecare nume de departament din *employees.csv*, să se afișeze numărul de angajați aferent. De exemplu: IT – X angajați, HR – Y angajați, ș.a.m.d.)

\[2p] (d) Identificați departamentul care are cei **mai mulți angajați** și afișați numele acelui departament împreună cu numărul de angajați pe care îi are. (Practic, determinați care este valoarea maximă dintre valorile obținute la punctul (c) și indicați departamentul corespunzător.)

## \[10p] Proba 8

\[1p] (a) Afișați **numărul total de conturi de utilizator** existente pe sistem. (Sugestie: numărul de linii din */etc/passwd*.)

\[2p] (b) Afișați câți utilizatori au shell-ul de login setat la **`/bin/bash`**. (Cu alte cuvinte, de câte ori apare “/bin/bash” ca shell implicit în */etc/passwd*.)

\[3p] (c) Afișați **toate grupurile** din care face parte utilizatorul **`root`**. (Lista numelor de grup în care root este membru – se pot obține din comanda `groups` sau din fișierul */etc/group*.)

\[4p] (d) Afișați **numele tuturor utilizatorilor** ai căror shell de conectare (login shell) este **`/usr/sbin/nologin`** sau **`/bin/false`**. (Acestea sunt conturi de sistem fără acces interactiv – parcurgeți fișierul */etc/passwd* și extrageți numele utilizatorilor cu shell-ul specificat.)

## \[10p] Proba 9

\[3p] (a) Determinați și afișați **modelul procesorului (CPU)** al sistemului. (Numele complet al modelului, așa cum apare în informațiile CPU – ex. prin `lscpu` sau */proc/cpuinfo*.)

\[3p] (b) Afișați **numărul de nuclee fizice (core-uri)** ale procesorului. (În cazul unui sistem multi-core, precizați numărul de core-uri fizice totale. *Hint:* Se poate folosi `lscpu` sau interpretarea câmpurilor din */proc/cpuinfo*.)

\[2p] (c) Afișați cantitatea totală de **memorie RAM** instalată pe sistem (în **MB**).

\[2p] (d) Afișați dimensiunea totală **și** spațiul liber disponibil pe partiția rădăcină **`/`** a sistemului, în format ușor de citit (human-readable). (Practic, informații de tipul celei furnizate de `df -h` pentru sistemul de fișiere montat pe `/`.)

## \[10p] Proba 10

\[4p] (a) Afișați cele mai mari **5 fișiere** din directorul **`/usr`**, împreună cu dimensiunea fiecăruia. (Ordonați fișierele din întreaga ierarhie `/usr` după mărime descrescător și afișați primele 5 intrări cu mărimea și calea completă.)

\[3p] (b) Afișați cele mai recente **5 fișiere modificate** din directorul **`/var/log`**. (Listați 5 fișiere din `/var/log` care au cea mai recentă dată a ultimei modificări, ordonate descrescător după timpul modificării. Indicați numele fișierelor în ordine, de la cel mai recent modificat.)

\[3p] (c) Afișați **numărul total de directoare** (incluzând subdirectoarele din toate nivelurile) din întreaga ierarhie a directorului **`/etc`**. (Se cere doar un număr – câte directoare există în `/etc` în total.)
