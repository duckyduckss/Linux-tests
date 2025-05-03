# Olimpiadă Linux – Test Ultra-Avansat (Clasele 9–10)

**Notă:** Fiecare probă valorează 10 puncte în total, cu subpuncte punctate 1–4 puncte. Sunt excluse scripting Bash (buclați/funcții), rețelistică, Git sau Makefile. Concentrare pe filtrare text complexă, `find` avansat, `rsync` și cunoștințe hardware/disk elaborate.

---

## \[10p] Proba 1 – Filtrare de bază în `nodes_data.csv`

1. \[2p] (a) Afișați doar linia de antet (header).
2. \[2p] (b) Într-un one-liner, extrageți `NodeID` și `Hostname` pentru nodurile cu `Status=FAILED` și `Mem_Usage` > 50%.
3. \[3p] (c) Calculați și afișați, pentru fiecare `Maintainer`, numărul de noduri aflate în `MAINTENANCE`, sub forma `Maintainer:Count`.
4. \[3p] (d) Afișați `NodeID` și `Email` pentru toate nodurile care au în câmpul `Tags` tag-ul `prod` și pentru care data din `LastCheck` este mai veche de **7 zile** (folosiți `date` și `awk`/`sed`).

## \[10p] Proba 2 – Prelucrare avansată în `nodes_data.csv`

1. \[3p] (a) Înlocuiți toate aparițiile domeniului `enterprise.local` cu `corp.internal`, afișând doar liniile care s-au modificat (folosiți `grep -vFf` sau `diff`).
2. \[2p] (b) Extrageți `Hostname` și procentajul de disk utilizat (`used/total*100`), afișând doar nodurile cu utilizare > 80%, sub forma `Hostname – XX.Y%`.
3. \[3p] (c) Convertiți câmpul `LastCheck` (ISO) în timestamp Unix și salvați rezultatul în `node_timestamps.txt` cu formatarea `NodeID;Timestamp`.
4. \[2p] (d) Înlocuiți separatorul `|` din `Tags` cu `,`, apoi afișați doar liniile care au cel puțin **3** etichete.

## \[10p] Proba 3 – Comenzi `find` avansate

1. \[3p] (a) Listați toate fișierele `.log` din `/var/log` modificate în ultimele **90 de minute** și cu dimensiunea > 200K, afișând calea completă.
2. \[4p] (b) Într-un singur one-liner cu `find -exec`, arhivați aceste fișiere într-un `tar.gz` numit `hot_logs.tar.gz` și apoi ștergeți fișierele originale.
3. \[3p] (c) Folosind `find` și opțiunea `-prune`, afișați toate directoarele din `/home` care NU au fost accesate (`atime`) în ultimele **60 zile**.

## \[10p] Proba 4 – Utilitar similar `rsync`

1. \[2p] (a) Sincronizați recursiv `/srv/data` → `/backup/data`, păstrând permisiuni, link-uri simbolice și timestamp-uri, cu compresie activată.
2. \[3p] (b) Creați un fișier `exclude.txt` care exclude toate fișierele `.bak` și directoarele `tmp/`, apoi folosiți-l cu `rsync` să le omiteți.
3. \[3p] (c) Rulați sincronizare în modul dry-run, salvând output-ul detaliat în `dryrun.log`.
4. \[2p] (d) După sincronizarea inițială, rulați un incremental sync pentru noile fișiere modificate, redirecționând jurnalul în `rsync_inc.log`.

## \[10p] Proba 5 – Filtrare text în loguri

1. \[2p] (a) Din `/var/log/syslog`, afișați intrările din ultima zi care conțin “warning” (ignorând majuscule).
2. \[3p] (b) În `/var/log/auth.log`, numărați, pentru fiecare oră, câte mesaje “Accepted password” apar și afișați `HH:00 – Count`.
3. \[3p] (c) Eliminați liniile de comentariu (`#...`) din `/etc/fstab` și salvați rezultatul în `fstab_stripped.txt`.
4. \[2p] (d) Din `fstab_stripped.txt`, extrageți câmpurile dispozitiv și punct montare și afișați-le sub forma `device -> mountpoint`.

## \[10p] Proba 6 – Analiză `/etc/passwd` și `/etc/group`

1. \[3p] (a) Extrageți utilizatorii cu UID între **500** și **1500**, afișând `username:UID`.
2. \[3p] (b) Afișați câte conturi au shell-ul `/bin/false` sau `/usr/sbin/nologin`.
3. \[4p] (c) Din `/etc/group`, identificați grupurile cu **>= 4 membri** și afișați `groupname – NumărMembri`.

## \[10p] Proba 7 – Statistici în `nodes_data.csv`

1. \[3p] (a) Listați rolurile (`Role`) distincte ordonate alfabetic.
2. \[3p] (b) Numărați câte noduri are fiecare rol și afișați rezultatul ordonat descrescător după număr.
3. \[4p] (c) Găsiți rolul cu **cele mai multe** noduri și afișați `Role – Count`.

## \[10p] Proba 8 – `find` și `xargs`

1. \[3p] (a) Cu `find` și `xargs`, calculați dimensiunea totală a tuturor fișierelor executabile din `/usr/local/bin`, afișând rezultatul în MB.
2. \[3p] (b) Cu `find -regex`, afișați fișierele din `/opt` al căror nume începe cu cifre și are extensia `.sh`.
3. \[2p] (c) Rename recursiv fișierele `.tmp` → `.old` sub `/tmp` folosind `find` și `mv`.
4. \[2p] (d) Numărați directoarele goale sub `/var/www/html`.

## \[10p] Proba 9 – Procese și monitorizare

1. \[2p] (a) Afișați top 5 procese (non-root) după consum de memorie (`%MEM`) cu `ps` și `sort`.
2. \[3p] (b) Folosind `pgrep -l ssh`, listați PID-urile și numele tuturor proceselor SSH.
3. \[3p] (c) Afișați PID-urile proceselor cu PPID=1 și comanda lor, în format `PID:command`.
4. \[2p] (d) Afișați numărul total de procese active.

## \[10p] Proba 10 – **Informații Hardware & Disk (elaborat)**

1. \[2p] (a) Afișați **modelul complet al CPU**, numărul de **nuclee fizice** și **threads** (folosiți `lscpu` sau `/proc/cpuinfo`).
2. \[2p] (b) Listați toate dispozitivele de tip bloc (`lsblk`) cu coloanele: **NAME, MAJ\:MIN, RM, SIZE, TYPE, MOUNTPOINT**.
3. \[2p] (c) Pentru fiecare sistem de fișiere montat, afișați **MountPoint, TotalMB, UsedMB, AvailMB, Use%**, sortate descrescător după **UsedMB** (folosiți `df -BM`).
4. \[2p] (d) Verificați starea **SMART** a discului principal (`/dev/sda`) și afișați doar linia cu `SMART overall-health`.
5. \[2p] (e) Măsurați viteza de citire buffered și cache a discului principal (`/dev/sda`) cu `hdparm -Tt /dev/sda` și afișați liniile relevante cu rata de transfer.

---

**Fișier de lucru pentru probele 1–2 și 7:**
**nodes\_data.csv**, pe care îl poți descărca de aici:
👉 [Descarcă nodes\_data.csv](sandbox:/mnt/data/nodes_data.csv)
