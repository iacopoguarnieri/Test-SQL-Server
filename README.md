# Test SQL Server
Script per DB in SQL Server per caricare record da file csv

# File presenti nella repository
1) Script per creare il DB
2) Esempio di file .csv per importare i dati
3) Script per creare la procedura che esegue importa i dati per la tabella SINISTRI da un file in formato .csv
4) Script per creare le procedure che vanno ad eseguire le 8 query richieste
5) Script per creare il trigger che dopo l'esecuzione del flusso di dati descritto al punto 2 va a controllare l'importo del danno e rivalutarlo del 10% se rispetta determinate condizioni

# Struttura della risoluzione del test
Prima di tutto ho creato una procedura che apre il file .csv posizionato nella cartella denominata "input", lo sposta nella cartella denominata "processed" e lo rinomina. Dopo copia i dati al suo interno nella tabella SINISTRI. Per controllare l'importo del danno dopo l'inserimento ho creato un trigger AFTER INSERT che va a controllare i dati nella tabella AUTOCOINVOLTE e, se rispetta le condizioni descritte nel pdf di specifiche del test, aggiorna il campo corretto. Per eseguire le 8 query ho creato 8 diverse procedure per poterlerichiamare senza dover scrivere tutto il codice ogni volta.

# Procedura per far funzionare il database su un qualsiasi pc
1) Copiare ed eseguire il codice del file "ScriptDB" per creare il database di test e popolare tutte le tabelle
2) Copiare ed eseguire il codice del file "ScriptTrigger" per creare il trigger che rivaluta l'importo del danno dopo l'inserimento dei sinistri
3) Copiare ed eseguire il codice del file "ScriptQuery" per poter visualizzare le 8 query richieste
4) Copiare ed eseguire il codice della procedura contenuto nel file "ScriptFlusso" per caricare i dati contenuti nel file "sinistri.csv" (NOTA: prima di eseguire il codice cambiare il path delle directory e del file). Il test è predisposto in modo che in SINISTRI vengano caricati almeno tre sinistri con codice 5, 6, 7. Questo perché sono già stati predisposti dei record all'interno della tabella AUTOCOINVOLTE in modo da poter provare anche il trigger per rivalutare l'importo del danno. Se si vogliono caricare altri codici per i sinistri caricare anche i nuovi record relativi nella tabella AUTOCOINVOLTE

# Note importanti
1) Per lo sviluppo ho usato un Mac facendo partire un SQL Server attraverso un container Docker. Gli stessi file utilizzati su Mac sono stati eseguiti su un pc con windows 10 e non ci sono stati problemi di compilazione ed esecuzione. Fatemi sapere se ci sono verificati problemi di compilazione (anche se dovrebbe essere tutto ok con W10) 
2) Per poter far funzionare correttamente la procedura per il flusso principale dei dati (quello che carica i dati dal file .csv) si deve modificare il path delle directory e del file della procedura del punto 4
