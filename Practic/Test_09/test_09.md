# Test Linux Avansat – Intermediar-Avansat

**Fișier de suport pentru probele 3 și 4:** `events.json`

---

## \[10p] Proba 1 – Organizare Proiect Web

1. **\[3p]** Creați un director principal `Deployment` cu trei subdirectoare: unul pentru cod, unul pentru date partajate și unul pentru jurnale.
2. **\[2p]** În folderul de date partajate, plasați trei fișiere de configurare goale și asigurați permisiuni doar proprietarului.
3. **\[2p]** În directorul de cod, generați patru directoare denumite în funcție de etape de lansare: „alpha”, „beta”, „rc” și „stable”.
4. **\[3p]** Mutați toate fișierele de configurare din data partajată în subdirectorul „config\_backup” creat la nivelul „Deployment”.

---

## \[10p] Proba 2 – Legături și Redirecționare

1. **\[2p]** În cadrul proiectului, creați două legături simbolice: una către folderul de jurnale și una către unul din directoarele de cod.
2. **\[3p]** Creați o legătură fizică (hard link) pentru un fișier de jurnal existent, astfel încât modificările să fie vizibile în ambele locații.
3. **\[2p]** Redirecționați conținutul unui fișier de jurnal într-un alt fișier nou, fără a folosi un editor interactiv.
4. **\[3p]** Concatenați două fișiere de jurnale într-unul singur, păstrând liniile în ordinea cronologică.

---

## \[10p] Proba 3 – Filtrare pe JSON (`events.json`)

1. **\[2p]** Identificați toate evenimentele care au tipul „ERROR” și afișați-le complete.
2. **\[3p]** Afișați lista unică a surselor de evenimente („source”) prezente.
3. **\[2p]** Numărați câte evenimente „WARNING” au avut codul de status peste 300.
4. **\[3p]** Extrageți timestamp-urile tuturor evenimentelor provenite dintr-o sursă specifică („backup\_service”).

---

## \[10p] Proba 4 – Transformări JSON și Agregări

1. **\[3p]** Înlocuiți toate aparițiile stringului „localhost” cu „127.0.0.1” în fișierul de evenimente și afișați primele 10 linii ale rezultatului.
2. **\[2p]** Convertiți toate timestamp-urile ISO dintr-un nod în format Unix și salvați output-ul într-un fișier nou.
3. **\[3p]** Calculați media valorilor câmpului „duration” pentru evenimentele de tip „backup”.
4. **\[2p]** Filtrați și afișați doar evenimentele care au un mesaj ce conține cuvântul „completed”.

---

## \[10p] Proba 5 – Monitorizare Procese Critice

1. **\[3p]** Afișați procesele care rulează sub un utilizator specific („backup\_user”), împreună cu PID și utilizarea de memorie.
2. **\[2p]** Identificați orice proces cu starea „defunct” și afișați PID-urile acestora.
3. **\[3p]** Afișați procesele cu cel mai mare consum de CPU în ultimele 60 de secunde, listând primele trei.
4. **\[2p]** Afișați PID-ul procesului shell curent și durata de execuție a acestuia.

---

## \[10p] Proba 6 – Gestionare Securizare Jurnale

1. **\[2p]** Creați un director `secure_logs` și setați permisiuni astfel încât numai un grup dedicat să poată citi.
2. **\[3p]** Schimbați grupul de proprietate al fișierelor de jurnal existente într-un grup numit `auditors`.
3. **\[3p]** Blochați permisiunile de scriere pentru toți utilizatorii în afara administratorului.
4. **\[2p]** Verificați și listați permisiunile curente ale directorului `secure_logs`.

---

## \[10p] Proba 7 – Medii de Shell și Variabile

1. **\[2p]** Definiți o variabilă de mediu numită `DEPLOY_ENV` cu valoarea `production`.
2. **\[3p]** Exportați variabila și demonstrați că este disponibilă într-un shell nou.
3. **\[2p]** Afișați toate variabilele de mediu care conțin șirul `PATH`.
4. **\[3p]** Resetați variabila `DEPLOY_ENV` la `staging` și verificați modificarea.

---

## \[10p] Proba 8 – Programare În C – Biblioteca de Loguri

Într-un director `loglib`, scrieți două fișiere sursă:

1. **\[4p]** `log.h`: definește o funcție `void write_log(const char *msg);`.
2. **\[3p]** `log.c`: implementează `write_log` pentru a adăuga mesaje într-un fișier `app.log` cu timestamp.
3. **\[3p]** Într-un fișier `main.c`, folosiți `write_log` pentru a scrie două mesaje distincte.

---

## \[10p] Proba 9 – Module Kernel

1. **\[3p]** Afișați toate modulele kernel încărcate care conțin substringul „usb”.
2. **\[2p]** Determinați dimensiunea memoriei ocupată de un modul specific (`ext4`).
3. **\[3p]** Demonstrați cum ați încărca și descărca un modul temporar.
4. **\[2p]** Afișați modulul principal (`init`) și starea acestuia.

---

## \[10p] Proba 10 – Sistem de Fișiere și Integritate

1. **\[2p]** Afișați listă detaliată a sistemelor de fișiere montate împreună cu opțiunile de montare.
2. **\[3p]** Verificați și raportați erorile unui sistem de fișiere necomprimat montat pe `/data`.
3. **\[3p]** Generați un raport al spațiului liber și ocupat pentru toate sistemele de fișiere, în MB.
4. **\[2p]** Demonstrați cum ați remonta un sistem de fișiere cu permisiuni read-only fără a reporni instanța.
