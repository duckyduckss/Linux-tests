# TEST ULTRA-AVANSAT LINUX – 10 PROBLEME (Clasele 9–10)

**Fișier de lucru pentru probele 1–2:**
[nodes\_data.csv](sandbox:/mnt/data/nodes_data.csv)

---

## \[10p] Proba 1 – Filtrare Complexă (nodes\_data.csv)

1. **\[1p]** Afișați antetul fișierului `nodes_data.csv`.
2. **\[2p]** Extrageți `NodeID` și `Hostname` pentru nodurile cu `Status="FAILED"` și `Mem_Usage` > 70%.
3. **\[2p]** Calculați media valorilor din câmpul `CPU_Load` pentru fiecare `Role`, afișând rezultatele sub forma `Role:AverageCPU`.
4. **\[3p]** Identificați nodurile care au cel puțin două etichete în câmpul `Tags` (separat cu `|`) ce conțin substringul `test`; afișați `NodeID,Tags`.
5. **\[2p]** Din câmpul `Disk` (format `used/totalGB`), calculați procentajul spațiului utilizat și afișați nodurile cu utilizare > 80% în formatul `Hostname – XX.Y%`.

---

## \[10p] Proba 2 – Transformări și Filtrări Avansate (nodes\_data.csv)

1. **\[2p]** Înlocuiți în întreg fișierul domeniul `enterprise.local` cu `corp.internal` și afișați doar liniile modificate.
2. **\[2p]** Extrageți câmpurile `Maintainer` și `Email` pentru nodurile cu `CPU_Load` între 50% și 80%, afișând fiecare pereche pe câte o linie.
3. **\[2p]** Afișați `NodeID,LastCheck` pentru nodurile ale căror timestamp-uri în `LastCheck` sunt mai vechi de 3 zile.
4. **\[2p]** Înlocuiți separatorul `|` din `Tags` cu `,` și afișați doar liniile care conțin simultan etichetele `old` și `critical`.
5. **\[2p]** Extrageți `Hostname` și procentajul de utilizare din `Disk`, afișând nodurile cu procentaj între 60% și 75% ca `Hostname – XX.Y%`.

---

## \[10p] Proba 3 – Comenzi `find` Avansate

1. **\[3p]** Listați toate fișierele `.log` din `/var/log` modificate în ultimele 90 de minute și cu dimensiunea > 200K, afișând calea completă.
2. **\[4p]** Folosind un one‑liner cu `find -exec`, arhivați aceste fișiere într-un fișier `hot_logs.tar.gz` și ștergeți-le.
3. **\[3p]** Cu `find` și opțiunea `-prune`, afișați directoarele din `/home` care nu au fost accesate (`atime`) în ultimele 60 de zile.

---

## \[10p] Proba 4 – Sincronizare cu `rsync`

1. **\[3p]** Sincronizați recursiv `/srv/data` → `/backup/data`, păstrând permisiuni, link‑uri simbolice și timestamp‑uri, cu compresie activată.
2. **\[3p]** Creați fișierul `exclude.txt` pentru excluderea tuturor fișierelor `.bak` și a directorului `tmp/`, apoi rulați `rsync` cu această listă.

**Verificare și incremental:**
3\. **\[2p]** Executați `rsync` în modul dry‑run și salvați raportul detaliat în `dryrun.log`.
4\. **\[2p]** După sincronizarea inițială, efectuați un sync incremental pentru fișierele noi și modificați jurnalul în `rsync_inc.log`.

---

## \[10p] Proba 5 – Procese și Monitorizare

1. **\[2p]** Afișați primele 5 procese non‑root ordonate descrescător după consumul de memorie (`%MEM`).
2. **\[2p]** Folosind `pgrep`, listați PID-urile proceselor care conțin `ssh` în denumire.
3. **\[2p]** Afișați PID-urile proceselor cu PPID=1 și comenzile lor, formatare `PID:command`.
4. **\[2p]** Afișați uptime-ul sistemului în zile întregi.
5. **\[2p]** Afișați toate procesele sub formă arborescentă, împreună cu PID-urile.

---

## \[10p] Proba 6 – Analiză Conturi și Grupuri

1. **\[3p]** Din `/etc/passwd`, extrageți utilizatorii cu UID între 500 și 1500, afișând `username:UID`.
2. **\[2p]** Afișați câte conturi au shell-ul `/bin/false` sau `/usr/sbin/nologin`.
3. **\[3p]** Din `/etc/group`, listați grupurile cu cel puțin 4 membri, sub forma `groupname – număr_membri`.
4. **\[2p]** Afișați grupurile din care face parte utilizatorul `root`.

---

## \[10p] Proba 7 – Raport Fișiere și Spațiu

1. **\[3p]** Afișați toate sistemele de fișiere montate tip `ext4` și punctele lor de montare.
2. **\[3p]** Prezentați spațiul ocupat și liber de pe `/var` în KB, în format tabelar.
3. **\[2p]** Numărați câte partiții de tip bloc au dimensiunea > 100G.
4. **\[2p]** Listați dispozitivele de tip bloc fără punct de montare.

---

## \[10p] Proba 8 – Creare Makefile (C)

Pentru inițializarea mediului de lucru, descarcă scriptul `setup_make_env.sh` de aici:
[sandbox:/mnt/data/setup\_make\_env.sh](sandbox:/mnt/data/setup_make_env.sh)
Apoi executați scriptul și răspundeți cerințelor în directorul `make_env`:

1. **\[4p]** Scrieți un Makefile care compilează un executabil numit `program` din `main.c` și `utils.c`.
2. **\[3p]** Adăugați o regulă `run` care execută `./program` și salvează output-ul în `output.txt`.
3. **\[3p]** Adăugați o regulă `clean` care șterge executabilul și fișierele obiect.

---

## \[10p] Proba 9 – Git Introducere

1. **\[2p]** Inițializați un repository Git în directorul curent.
2. **\[2p]** Configurați `user.name` și `user.email` pentru repository.
3. **\[3p]** Creați un fișier `report.md`, adăugați conținut arbitrar, apoi faceți `git add` și `git commit` cu mesajul “Report added”.
4. **\[3p]** Creați o ramură `draft`, comutați pe ea, modificați `report.md` și faceți un nou commit.

---

## \[10p] Proba 10 – Hardware & Disk (Elaborat)

1. **\[1p]** Afișați modelul complet al CPU-ului.
2. **\[1p]** Afișați numărul de nuclee fizice.
3. **\[2p]** Afișați numărul de threads și socket-uri.
4. **\[2p]** Listați dispozitivele de tip bloc cu coloanele `NAME, MAJ:MIN, RM, SIZE, TYPE, MOUNTPOINT`.
5. **\[2p]** Pentru fiecare punct de montare, afișați `MountPoint, TotalMB, UsedMB, AvailMB, Use%`, sortate descrescător după `UsedMB`.
6. **\[1p]** Afișați starea SMART a discului principal (`/dev/sda`), evidențiind linia `SMART overall-health`.
7. **\[1p]** Măsurați viteza de citire buffered și cache cu `hdparm -Tt /dev/sda` și afișați rezultatele relevante.
