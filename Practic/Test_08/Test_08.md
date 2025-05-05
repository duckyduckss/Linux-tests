# Test Linux Intermediar-Avansat (Nivel Dificil)

## \[10p] Proba 1 – Gestionare Avansată a Fișierelor

1. \[2p] Creează structura complexă de directoare `Project/{src,bin,config,logs}` folosind o singură comandă.
2. \[2p] În directorul `src` creează simultan fișierele `main.c`, `utils.c`, `app.h` și `utils.h`.
3. \[3p] Mută toate fișierele `.h` din directorul `src` în directorul `config`.
4. \[3p] Găsește și mută în directorul `logs` toate fișierele din sistem cu extensia `.log` mai noi de 24 ore și mai mari de 1MB.

## \[10p] Proba 2 – Permisiuni Avansate

1. \[2p] Setează permisiuni pe directorul `config` astfel încât doar proprietarul și grupul să poată citi și scrie.
2. \[2p] Creează utilizatorii `anna` și `george` și grupul `developers`. Adaugă-i pe amândoi în grupul creat.
3. \[3p] Asigură-te că fișierul `main.c` poate fi citit și editat doar de membrii grupului `developers`.
4. \[3p] Verifică și afișează permisiunile finale pentru `main.c`.

## \[10p] Proba 3 – Procese și Monitorizare

1. \[2p] Listează procesele pornite de utilizatorul `root` în ultimele 12 ore.
2. \[2p] Găsește procesul care consumă cea mai multă memorie și afișează toate detaliile.
3. \[3p] Identifică și afișează procesele zombie active în sistem.
4. \[3p] Afișează toate procesele care rulează de mai mult de 24 ore.

## \[10p] Proba 4 – Spațiu și Discuri

1. \[2p] Afișează spațiul total și utilizat pe toate partițiile formatate `ext4`.
2. \[2p] Găsește și afișează toate fișierele goale din directorul `/etc`.
3. \[3p] Identifică primele 5 cele mai mari fișiere din `/var` și afișează-le dimensiunea și locația.
4. \[3p] Afișează o statistică detaliată a spațiului ocupat de fiecare utilizator în `/home`.

## \[10p] Proba 5 – Administrare Sistem

1. \[2p] Afișează numărul total de utilizatori activi în prezent.
2. \[2p] Identifică toate conturile utilizatorilor care expiră în următoarele 30 de zile.
3. \[3p] Afișează lista tuturor utilizatorilor care au privilegiile `sudo`.
4. \[3p] Identifică și afișează utilizatorii fără parolă configurată.

## \[10p] Proba 6 – Analiză Avansată Fișiere CSV (nodes\_data.csv)

1. \[2p] Listează nodurile care au `CPU_Load` între 30% și 60%.
2. \[2p] Extrage nodurile care au statusul `MAINTENANCE` și afișează doar `Hostname` și `LastCheck`.
3. \[2p] Identifică și afișează nodurile cu tag-ul `prod`.
4. \[2p] Calculează media încărcării memoriei (`Mem_Usage`) pentru fiecare status în parte.
5. \[2p] Afișează nodurile care au fost verificate ultima oară cu mai mult de 10 zile în urmă.

## \[10p] Proba 7 – Git și Branch-uri

1. \[2p] Creează un repository nou `project_repo` și configurează utilizatorul.
2. \[2p] Realizează primul commit cu fișierul `README.md`.
3. \[3p] Creează o ramură numită `develop`, comută-te pe aceasta și adaugă un fișier `feature.txt`.
4. \[3p] Realizează un commit pe ramura `develop`, apoi comută-te înapoi pe ramura principală și afișează istoricul commiturilor.

## \[10p] Proba 8 – Makefile și Compilare

1. \[3p] Scrie un Makefile care compilează fișierele `main.c` și `utils.c` în executabilul `myapp`.
2. \[3p] Adaugă o regulă `test` care afișează mesajul "Compilation successful" după ce executabilul este creat.
3. \[4p] Adaugă o regulă complexă `clean` care șterge executabilul, fișierele obiect și backup-urile (`*~`).

## \[10p] Proba 9 – Informații Hardware Detaliate

1. \[2p] Afișează detaliile complete despre CPU (model, nuclee, threads).
2. \[2p] Listează toate dispozitivele de stocare și partițiile acestora.
3. \[3p] Verifică suportul pentru virtualizare al procesorului și afișează informațiile relevante.
4. \[3p] Afișează toate dispozitivele hardware PCI conectate în sistem.

## \[10p] Proba 10 – Backup și Sincronizare

1. \[3p] Sincronizează directorul `/etc` într-un director backup, excluzând fișierele `.conf`.
2. \[3p] Realizează o simulare de sincronizare a directorului `/var/www` și salvează raportul.
3. \[4p] Creează o arhivă comprimată `.tar.gz` cu toate fișierele modificate în ultimele 48 ore din directorul `/home`.
