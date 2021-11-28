-- drop the existing trigger  
DROP  TRIGGER  IF EXISTS  [AmountRevalutaszionAfterInsertFromCSV]  
GO  

-- create a new trigger  
CREATE  TRIGGER [AmountRevalutaszionAfterInsertFromCSV]  
ON  TestDB.[dbo].[SINISTRI]  
AFTER INSERT  
AS 
BEGIN   
    SET NOCOUNT ON ; 

    UPDATE  AUOCOINVOLTE  
    SET ImportoDelDanno  =  ImportoDelDanno  -  (ImportoDelDanno  * 10 )  / 100  
    FROM  AUOCOINVOLTE AC 
        INNER JOIN  SINISTRI S  ON  AC.CodS  =  S.CodS 
        INNER JOIN AUTO  A  ON  A.Targa  =  AC.Targa 
        INNER JOIN  PROPRIETARI P  ON  P.CodF  =  A.CodF 
        INNER JOIN  ASSICURAZIONI ASSIC  ON  ASSIC.CodAss  =  A.CodAss 
    WHERE  S.Data  <  '2021-01-20' AND  P.Residenza  <>  ASSIC.Sede 
END  
GO 
