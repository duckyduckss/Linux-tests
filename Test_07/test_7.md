# Test Linux Intermediar-Avansat (Clasele 9–10)

## \[10p] Proba 1 – Organizare fișiere

1. \[2p] Creează un director numit `ProjectX`, apoi adaugă trei subdirectoare (`Docs`, `Images`, `Scripts`).
2. \[2p] În directorul `Docs`, creează două fișiere goale (`plan.txt`, `requirements.txt`).
3. \[3p] Mută fișierul `requirements.txt` în directorul `Scripts`.
4. \[3p] Copiază directorul `Images` cu tot conținutul său într-un nou director numit `Backup`.

## \[10p] Proba 2 – Permisiuni

1. \[2p] Creează un fișier numit `confidential.txt` și acordă permisiuni doar proprietarului său (citire și scriere).
2. \[3p] Creează utilizatorul `john` și acordă-i drepturi de citire pentru fișierul `confidential.txt`.
3. \[3p] Creează un director `SharedData` care să permită tuturor utilizatorilor să creeze fișiere noi, dar să nu poată șterge fișierele create de alții.
4. \[2p] Verifică și afișează permisiunile directorului `SharedData`.

## \[10p] Proba 3 – Procese

1. \[2p] Listează toate procesele active ale utilizatorului curent.
2. \[3p] Afișează procesele care consumă mai mult de 5% din memoria RAM.
3. \[3p] Afișează PID-urile și numele proceselor lansate în ultimele 30 minute.
4. \[2p] Identifică procesul care rulează cel mai mult timp și afișează durata acestuia.

## \[10p] Proba 4 – Spațiu pe disc

1. \[2p] Afișează spațiul liber pe discul principal al sistemului în format ușor de citit.
2. \[3p] Listează cele mai mari trei directoare din `/home`.
3. \[3p] Găsește toate fișierele mai mari de 500 MB din directorul `/var`.
4. \[2p] Calculează spațiul total ocupat de toate fișierele din directorul `/tmp`.

## \[10p] Proba 5 – Analiza fișierelor de sistem

1. \[2p] Afișează câte linii are fișierul `/etc/passwd`.
2. \[2p] Identifică toate conturile utilizatorilor care nu au shell-ul interactiv.
3. \[3p] Listează utilizatorii cu UID mai mare de 1000.
4. \[3p] Afișează doar numele grupurilor care au cel puțin doi membri.

## \[10p] Proba 6 – Administrare utilizatori

1. \[2p] Adaugă un nou grup numit `teamdev`.
2. \[3p] Creează utilizatorul `alice` și adaugă-l în grupul `teamdev`.
3. \[3p] Schimbă shell-ul utilizatorului `alice` în `zsh`.
4. \[2p] Verifică grupurile din care face parte utilizatorul `alice`.

## \[10p] Proba 7 – Filtrare text

Se va utiliza fișierul `nodes_data.csv`.

1. \[2p] Afișează primele 10 linii din fișier.
2. \[2p] Afișează toate liniile care conțin textul „error” în câmpul `Comment`.
3. \[2p] Numără câte noduri au statusul `ACTIVE`.
4. \[2p] Afișează Hostname-urile nodurilor care au încărcarea CPU peste 70%.
5. \[2p] Extrage și afișează lista unică a maintainerilor.

## \[10p] Proba 8 – Git (introductiv)

1. \[2p] Inițializează un nou repository Git în directorul `my_repo`.
2. \[2p] Configurează numele și email-ul utilizatorului pentru acest repository.
3. \[3p] Creează și adaugă un fișier `notes.txt`, apoi realizează primul commit.
4. \[3p] Creează o ramură nouă `feature` și comută-te pe aceasta.

## \[10p] Proba 9 – Makefile (C simplu)

1. \[3p] Creează fișierele `main.c` și `helper.c` (program simplu care afișează un mesaj).
2. \[4p] Scrie un Makefile care compilează cele două fișiere într-un executabil numit `app`.
3. \[3p] Adaugă în Makefile o regulă care șterge executabilul și fișierele obiect.

## \[10p] Proba 10 – Informații Hardware

1. \[2p] Afișează informațiile despre memoria RAM instalată.
2. \[2p] Afișează tipul și frecvența CPU-ului.
3. \[2p] Identifică și afișează numărul de procesoare logice disponibile.
4. \[2p] Verifică dacă procesorul suportă virtualizarea.
5. \[2p] Listează dispozitivele USB conectate în prezent la sistem.
