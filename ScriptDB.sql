/* Creo il database */
CREATE DATABASE TestDB;
 GO 

 USE TestDB; 

 /* Creo le tabelle */ 
 CREATE TABLE ASSICURAZIONI( 
  CodAss varchar  (  255  ) NOT NULL PRIMARY KEY  , 
 Nome varchar  (  255  ) NOT NULL  , 
 Sede varchar  (  255  ) NOT NULL 
 ) 

 CREATE TABLE PROPRIETARI( 
  CodF varchar  (  255  ) NOT NULL PRIMARY KEY  , 
 Nome varchar  (  255  ) NOT NULL  , 
 Residenza varchar  (  255  ) NOT NULL 
 ) 

 CREATE TABLE AUTO  ( 
  Targa varchar  (  255  ) NOT NULL PRIMARY KEY  , 
 Marca varchar  (  255  ) NOT NULL  , 
 Cilindrata int NOT NULL  , 
 Potenza int NOT NULL  , 
 CodF varchar  (  255  ) NOT NULL  , 
 CodAss varchar  (  255  ) NOT NULL  , 
  FOREIGN KEY (CodF) REFERENCES PROPRIETARI(CodF), 
  FOREIGN KEY (CodAss) REFERENCES ASSICURAZIONI(CodAss) 
 ) 

 CREATE TABLE SINISTRI( 
  CodS varchar  (  255  ) NOT NULL PRIMARY KEY  , 
 Localita varchar  (  255  ) NOT NULL  , 
  Data date NOT NULL 
 ) 

 CREATE TABLE AUTOCOINVOLTE( 
  CodS varchar  (  255  ) NOT NULL  , 
 Targa varchar  (  255  ) NOT NULL  , 
 ImportoDelDanno float NULL 
  PRIMARY KEY (CodS,Targa) 
 ) 

 /* Popolo le tabelle */ 
 INSERT INTO SINISTRI(CodS, Localita, Data  ) VALUES  (  '1'  , 'Livorno'  , '2021-10-19'  ); 
 INSERT INTO SINISTRI(CodS, Localita, Data  ) VALUES  (  '2'  , 'Pisa'  , '2021-10-01'  ); 
 INSERT INTO SINISTRI(CodS, Localita, Data  ) VALUES  (  '3'  , 'Firenze'  , '2021-10-15'  ); 
 INSERT INTO SINISTRI(CodS, Localita, Data  ) VALUES  (  '4'  , 'Roma'  , '2021-10-19'  ); 

 INSERT INTO PROPRIETARI(CodF, Nome, Residenza) VALUES  (  'ABCDEF123456'  , 'MARIO ROSSI'  , 'Livorno'  ); 
 INSERT INTO PROPRIETARI(CodF, Nome, Residenza) VALUES  (  'ABFMGR23343'  , 'MARIO Bianchi'  , 'Pisa'  ); 

 INSERT INTO ASSICURAZIONI(CodAss, Nome, Sede) VALUES  (  'ALZ'  , 'Allianz'  , 'Pisa'  ); 
 INSERT INTO ASSICURAZIONI(CodAss, Nome, Sede) VALUES  (  'SR'  , 'Sara'  , 'Livorno'  ); 

 INSERT INTO AUTO  (Targa, Marca, Cilindrata, Potenza, CodF, CodAss) VALUES  (  'AB123CD'  , 'Nissan'  , 2001  , 121  , 'ABCDEF123456'  , 'ALZ'  ); 
 INSERT INTO AUTO  (Targa, Marca, Cilindrata, Potenza, CodF, CodAss) VALUES  (  'CD123AB'  , 'BMW'  , 300  , 121  , 'ABCDEF123456'  , 'SR'  ); 
 INSERT INTO AUTO  (Targa, Marca, Cilindrata, Potenza, CodF, CodAss) VALUES  (  'GN459GI'  , 'Fiat'  , 300  , 400  , 'ABFMGR23343'  , 'SR'  ); 
 INSERT INTO AUTO  (Targa, Marca, Cilindrata, Potenza, CodF, CodAss) VALUES  (  'GO037DU'  , 'Fiat'  , 300  , 400  , 'ABFMGR23343'  , 'ALZ'  ); 
 INSERT INTO AUTO  (Targa, Marca, Cilindrata, Potenza, CodF, CodAss) VALUES  (  'TI890RI'  , 'Fiat'  , 2000  , 400  , 'ABFMGR23343'  , 'SR'  ); 
 
 INSERT INTO AUTOCOINVOLTE(CodS, Targa, ImportoDelDanno) VALUES  (  '1'  , 'AB123CD'  , '400'  ); 
 INSERT INTO AUTOCOINVOLTE(CodS, Targa, ImportoDelDanno) VALUES  (  '1'  , 'TI890RI'  , '300'  ); 
 INSERT INTO AUTOCOINVOLTE(CodS, Targa, ImportoDelDanno) VALUES  (  '2'  , 'GN459GI'  , '300'  ); 
 INSERT INTO AUTOCOINVOLTE(CodS, Targa, ImportoDelDanno) VALUES  (  '2'  , 'TI890RI'  , '300'  ); 
 INSERT INTO AUTOCOINVOLTE(CodS, Targa, ImportoDelDanno) VALUES  (  '6'  , 'TI890RI'  , '300'  ); 
 INSERT INTO AUTOCOINVOLTE(CodS, Targa, ImportoDelDanno) VALUES  (  '7'  , 'GO037DU'  , '300'  ); 
}
