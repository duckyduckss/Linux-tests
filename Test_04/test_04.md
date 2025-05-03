# Olimpiadă Linux – Test Avansat (Clasele 9–10)

**Notă:** Fiecare probă are 10 puncte în total, cu subpuncte variate (1–4p). Concentrare pe filtrare text complexă, utilizarea utilitarelor `rsync` și comenzi `find` avansate. Fără scripting Bash (buclați, funcții), fără rețelistică, Git sau Makefile.

## \[10p] Proba 1 (Filtrare de bază în `nodes_data.csv`)

\[2p] (a) Afișați doar antetul (`header`) al fișierului.
\[2p] (b) Afișați `NodeID` și `Hostname` pentru nodurile cu `Status` = **ACTIVE** și `CPU_Load` > **85%**, într-un singur one-liner.
\[3p] (c) Calculați media (`average`) a câmpului `Mem_Usage` pentru fiecare `Role` și afișați rezultatul sub forma `Role:Valoare`.
\[3p] (d) Găsiți nodurile cu tag-ul **critical** (câmp `Tags`, delimitat cu `|`) și cuvântul **fail** (caz insensitive) în câmpul `Comment`, apoi afișați `NodeID,Hostname,Comment`.

## \[10p] Proba 2 (Prelucrare avansată în `nodes_data.csv`)

\[3p] (a) Înlocuiți în tot fișierul domeniul de email `@enterprise.local` cu `@corp.internal` și afișați primele 15 linii ale rezultatului fără a modifica fișierul original.
\[2p] (b) Extrageți `Hostname` și coloana `Disk`, calculați procentajul `Disk_Utilizat = used/total*100` și afișați doar nodurile cu `Disk_Utilizat` > **75%** (afișați `Hostname – Disk_Utilizat%`).
\[3p] (c) Convertiți cîmpul `LastCheck` (format ISO) în timestamp Unix și salvați rezultatul într-un fișier `timestamps.txt` sub forma `NodeID;Timestamp`.
\[2p] (d) Înlocuiți separatorul `|` din `Tags` cu `,` și afișați doar liniile care au mai mult de două etichete (tags).

## \[10p] Proba 3 (Comenzi `find` avansate)

\[3p] (a) Folosind `find`, listați toate fișierele `.log` din `/var/log` modificate în ultimele **2 ore** și având dimensiunea > **100K** (afișați calea completă).
\[4p] (b) Într-un singur one-liner cu `find -exec`, arhivați aceste fișiere într-un `tar.gz` numit `recent_logs.tar.gz` și apoi ștergeți fișierele originale.
\[3p] (c) Folosind `find`, afișați toate directoarele din `/home` care nu au fost accesate (`atime`) în ultimele **30 zile**.

## \[10p] Proba 4 (Utilitar similar `rsync`)

\[2p] (a) Sincronizați recursiv directorul `/data` cu `/backup`, păstrând permisiuni, link-uri simbolice, și timestamp-urile fișierelor; activați compresia în timpul transferului. Scrieți comanda completă.
\[3p] (b) Creați un fișier `exclude.lst` care exclude toate fișierele `.tmp` și subdirectorul `logs/`. Folosind acest fișier, rulați `rsync` astfel încât să nu copieze aceste elemente.
\[3p] (c) Rulați o sincronizare în modul dry-run și afișați un rezumat al schimbărilor ce vor fi efectuate, redirecționând output-ul în `dryrun.log`.
\[2p] (d) După sincronizarea inițială, utilizați opțiunea potrivită rsync pentru a sincroniza doar fișierele modificate ulterior și salvați jurnalul în `rsync_incremental.log`.

## \[10p] Proba 5 (Filtrare text în loguri)

\[2p] (a) Din `/var/log/syslog`, afișați toate intrările din intervalul 00:00–06:00 din ultimele 7 zile care conțin cuvântul **error** (insensitive).
\[3p] (b) În `/var/log/auth.log`, numărați câte mesaje **“Failed password”** există pe fiecare dată și afișați `Data – Număr`.
\[3p] (c) Ștergeți (filtrare) liniile de comentariu (`#...`) din `/etc/fstab` și salvați output-ul în `fstab_clean.txt`.
\[2p] (d) Din `fstab_clean.txt`, extrageți doar coloanele 1 și 2 (dispozitiv și punct de montare) și afișați-le în format `dispozitiv -> punct_montare`.

## \[10p] Proba 6 (Analiză `/etc/passwd` și `/etc/group`)

\[3p] (a) Extrageți toți utilizatorii cu **UID** între **1000** și **2000**, afișând `username:UID`.
\[3p] (b) Afișați câți utilizatori au shell-ul setat la `/usr/sbin/nologin`.
\[4p] (c) Din `/etc/group`, afișați toate grupurile care au **cel puțin 5 membri**, sub forma `group_name – număr_membri`.

## \[10p] Proba 7 (Statistici în `nodes_data.csv`)

\[3p] (a) Listați rolurile distincte (`Role`) din fișier, ordonate alfabetic.
\[3p] (b) Numărați câte noduri are fiecare rol și afișați-le ordonate descrescător după număr.
\[4p] (c) Identificați rolul cu **cel mai mare** număr de noduri și afișați `Role – Număr`.

## \[10p] Proba 8 (Comenzi `find` și `xargs`)

\[3p] (a) Folosind `find` și `xargs`, căutați în `/opt` toate fișierele executabile modificate în ultimele 24h și calculați dimensiunea totală a acestor fișiere.
\[3p] (b) Folosind `find -regex`, afișați fișierele din `/usr/bin` al căror nume conține cifre.
\[2p] (c) Rename recursiv cu `find` și `sed`: toate fișierele cu extensia `.bak` → `.old`.
\[2p] (d) Afișați numărul de directoare **goale** din `/home`.

## \[10p] Proba 9 (Procese și monitorizare)

\[2p] (a) Afișați primele 5 procese (non-root) care consumă cel mai mult CPU (`%CPU`), folosind `ps` și `awk`.
\[3p] (b) Listați PID-urile proceselor care conțin “ssh” în comanda lor, folosind `pgrep`.
\[3p] (c) Afișați PID-ul procesului cu `PID=1` și toți descendenții săi direcți (doar PID-urile).
\[2p] (d) Afișați numărul total de procese în execuție.

## \[10p] Proba 10 (Informații Hardware și Disk)

\[3p] (a) Afișați spațiul liber și total **pe toate** partițiile care au punct de montare ce începe cu `/data`, în GB cu o zecimală.
\[3p] (b) Folosind `lscpu` și `grep`, afișați frecvența CPU (`CPU MHz`) și numărul de socket-uri (`Socket(s)`).
\[2p] (c) Afișați memoria swap totală și liberă în **MB**.
\[2p] (d) Exportați output-ul comenzii `df -h` într-un fișier `filesystem_report.txt`.
