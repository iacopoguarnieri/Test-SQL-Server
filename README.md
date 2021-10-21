# TestInterlogica
Script per DB in SQL Server per test azienda Interlogica

# File presenti nella repository
1) Script per creare il DB
2) Script per creare la procedura che esegue importa i dati per la tabella SINISTRI da un file in formato .csv
3) Script per creare le procedure che vanno ad eseguire le 8 query richieste
4) Script per creare il trigger che dopo l'esecuzione del flusso di dati descritto al punto 2 va a controllare l'importo del danno e rivalutarlo del 10% se rispetta determinate condizioni

# Struttura della risoluzione del test
Prima di tutto ho creato una procedura che apre il file .csv posizionato nella cartella denominata "input", lo sposta nella cartella denominata "processed" e lo rinomina. Dopo copia i dati al suo interno nella tabella SINISTRI e, se ci sono record malformati, scrive questi in un file denominato "error.csv". Per controllare l'importo del danno dopo l'inserimento ho creato un trigger AFTER INSERT che va a controllare i dati nella tabella AUTOCOINVOLTE e, se rispetta le condizioni descritte nel pdf di specifiche del test, aggiorna il campo corretto. Per eseguire le 8 query ho creato 8 diverse procedure per poterlerichiamare senza dover scrivere tutto il codice ogni volta.

# Note importanti
1) Per lo sviluppo ho usato un Mac facendo partire un SQL Server attraverso un container Docker. Gli stessi file utilizzati su Mac sono stati eseguiti su un pc con windows 10 e non ci sono stati problemi di compilazione ed esecuzione.
2) Per poter farlo funzionare correttamente si deve modificare il path delle directory e del file della procedura del punto 4
