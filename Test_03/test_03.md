# Olimpiadă Linux – Set Nou de 10 Subiecte (Clasele 9–10)

**Notă:** Toate sunt 100% practice, fără scripting Bash (fără bucle), fără rețelistică, Git sau Makefile. Dificultate: intermediar–avansat, rezolvabile în <2h.

## \[10p] Proba 1

\[3p] (a) În directorul curent, creați structura:

```
📂 BackupJobs  
├── 📂 Daily  
│   ├── backup_$(date +%Y-%m-%d).tar.gz  
│   └── summary.log  
├── 📂 Weekly  
│   ├── backup_week_$(date +%U).tar.gz  
│   └── summary_week.log  
└── 📂 Archives  
```

(Generați fișierele goale cu numele potrivit folosind expansiune de shell.)

\[1p] (b) Folosind o singură comandă, mutați toate fișierele `.log` din `BackupJobs/Daily` în `BackupJobs/Archives`.

\[2p] (c) Copiați doar fișierele `.tar.gz` mai mari de 1 MB din `Weekly` în `Archives`, păstrând permisiunile originale.

\[4p] (d) În directorul `ARCHIVE_ROOT` (o variabilă de mediu), creați 100 de directoare goale cu numele `job_NNN`, unde `NNN` este un număr de la 001 la 100, folosind un one-liner de expansiune.

## \[10p] Proba 2 *(se folosește fișierul `servers.csv`)*

\[3p] (a) Afișați toate linii din `servers.csv` pentru serverele care rulează **Ubuntu 20.04** și au încărcarea CPU (`CPU%`) peste **70%**.

\[3p] (b) Sortați toate serverele după **UptimeDays** descrescător și afișați primele 5 linii (inclusiv antetul).

\[2p] (c) Afișați numărul de servere ale căror mentenanță este asigurată de **“Maria Georgescu”**.

\[2p] (d) Extrageți doar coloanele **Hostname** și **IP** (dacă IP nu există, folosiți coloana `Email`) din fișier și salvați-le în `hosts.txt` sub formă `Hostname - Valoare`.

> *Notă:* Fișierul `servers.csv` nu conține coloană IP, asigurați-vă că folosiți a doua coloană disponibilă (Email).

## \[10p] Proba 3

\[2p] (a) Afișați spațiul liber și total de pe partiția montată pe `/home`, în **GB**, cu 2 zecimale.

\[3p] (b) Găsiți și afișați primele 5 cele mai mari fișiere din **`/var/log`**, împreună cu dimensiunea lor, în format human-readable.

\[3p] (c) Numărați câte fișiere din `/tmp` au fost modificate în ultimele **10** minute.

\[2p] (d) Afișați uptime-ul sistemului în **zile** (numărul de zile complete de la ultima pornire).

## \[10p] Proba 4

\[1p] (a) Creați un grup nou `operators`.
\[2p] (b) Creați utilizatorul `sam` și adăugați-l în grupul `operators`.
\[3p] (c) Ca utilizator `sam`, creați un fișier `deploy.sh` (gol) în directorul home și setați permisiuni astfel: owner → rw-, grup → r--, alții → —.
\[4p] (d) Schimbați proprietarul fișierului `deploy.sh` la `root:operators` și verificați permisiunile finale.

## \[10p] Proba 5

\[2p] (a) Afișați procesele utilizatorului `sam` cu PID și %MEM, ordonate descrescător după memorie.
\[3p] (b) Afișați PID-urile tuturor proceselor al căror PPID este **1** și comanda lor.
\[2p] (c) Afișați PID-ul shell-ului curent.
\[1p] (d) Afișați câte procese rulează sub utilizatorul `root`.
\[2p] (e) Afișați top 5 procese după timp de CPU consumat (`%CPU`).

## \[10p] Proba 6

\[2p] (a) Afișați toate conturile de utilizator cu shell-ul setat la `/usr/sbin/nologin`.
\[3p] (b) Afișați câte conturi au UID < 1000 (conturi de sistem).
\[2p] (c) Afișați grupurile din care face parte utilizatorul `sam`.
\[3p] (d) Afișați numărul total de conturi de utilizator (linii în `/etc/passwd`).

## \[10p] Proba 7

\[3p] (a) Afișați modelul complet al CPU (câmpul “Model name” din `/proc/cpuinfo`).
\[3p] (b) Afișați numărul de nuclee fizice (cores) ale CPU.
\[2p] (c) Afișați memoria RAM totală în MB.
\[2p] (d) Afișați swap-ul total și liber, în MB.

## \[10p] Proba 8

\[3p] (a) Afișați numărul total de pachete instalate pe sistem (folosind comanda de pachet specifică: `dpkg -l` sau `rpm -qa`).
\[3p] (b) Afișați primele 10 pachete ordonate după dimensiunea instalată (`apt-cache` sau `rpm -qi`).
\[4p] (c) Găsiți și afișați pachetele care au în denumire `kernel` și redirecționați rezultatul într-un fișier `kernels.txt`.

## \[10p] Proba 9

\[2p] (a) Afișați toate fișierele `.conf` din `/etc` modificate în ultimele 24 de ore.
\[4p] (b) Arhivați aceste fișiere într-un tar.gz numit `recent_conf.tar.gz`, păstrând structura directoarelor.
\[2p] (c) Afișați conținutul arhivei fără a o extrage.
\[2p] (d) Ștergeți din arhivă fișierele care au dimensiunea 0 bytes (folosind opțiuni de tar, fără recrearea arhivei de la zero).

## \[10p] Proba 10

\[2p] (a) Într-o comandă, afișați primele 20 de linii și ultimele 20 de linii simultan din fișierul `/var/log/syslog`.
\[3p] (b) Afișați ultimele 100 de linii ale fișierului `/var/log/auth.log`, apoi numărați câte dintre ele conțin textul `Failed`.
\[3p] (c) Folosind `grep` și `sed` într-un one-liner, înlocuiți toate aparițiile adresei IP `127.0.0.1` din `/etc/hosts` cu `127.0.1.1` și afișați rezultatul fără a modifica fișierul pe disc.
\[2p] (d) Afișați un histogramă a numărului de procese per utilizator (comandă unică, output text).
