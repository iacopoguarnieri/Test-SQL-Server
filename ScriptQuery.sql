USE  TestDB;
GO
CREATE PROCEDURE Query_1
AS
    SET NOCOUNT ON ; 
    SELECT  [Targa],[Marca] 
    FROM  [TestDB].[dbo].[AUTO] 
    WHERE  [Cilindrata]  > 2000 OR  [Potenza]  > 120 ; 
GO
EXEC  dbo.Query_1;

USE  TestDB;
GO
CREATE PROCEDURE Query_2
AS   
    SET NOCOUNT ON ; 
    SELECT  [Targa],[Nome] 
    FROM  [TestDB].[dbo].[AUTO]  AS  A  INNER JOIN  [TestDB].[dbo].[PROPRIETARI]  AS  P  ON  A.CodF  =  P.CodF 
    WHERE  [Cilindrata]  > 2000 OR  [Potenza]  > 120 ; 
GO  
EXEC  dbo.Query_2; 

USE  TestDB; 
GO  
CREATE PROCEDURE Query_3  
AS   
    SET NOCOUNT ON ; 
    SELECT  [Targa],P.[Nome] 
    FROM  [TestDB].[dbo].[AUTO]  AS  A  INNER JOIN  [TestDB].[dbo].[PROPRIETARI]  AS  P  ON  A.CodF  =  P.CodF 
        INNER JOIN  [TestDB].[dbo].[ASSICURAZIONI]  AS  ASSIC  ON  A.CodAss  =  ASSIC.CodAss 
    WHERE  ([Cilindrata]  > 2000 OR  [Potenza]  > 120 )  AND  ASSIC.Nome  = 'SARA' ; 
GO  
EXEC  dbo.Query_3; 

USE  TestDB; 
GO  
CREATE PROCEDURE Query_4  
AS   
    SET NOCOUNT ON ; 
    SELECT  A.Targa, COUNT ( * )  AS  NSinistri 
    FROM  TestDB.dbo. AUTO AS  A 
        INNER JOIN  TestDB.dbo.AUTOCOINVOLTE  AS  AC  ON  A.Targa  =  AC.Targa 
    WHERE  Marca  = 'Fiat'  
    GROUP BY  A.Targa;  
GO  
EXEC  dbo.Query_4; 

USE  TestDB; 
GO  
CREATE PROCEDURE Query_5 
AS   
    SET NOCOUNT ON ; 
    SELECT  A.Targa, ASSIC.Nome, SUM (ImportoDelDanno)  AS  ImportoTotale 
    FROM  TestDB.dbo. AUTO AS  A 
        INNER JOIN  TestDB.dbo.AUTOCOINVOLTE  AS  AC  ON  A.Targa  =  AC.Targa 
        INNER JOIN  TestDB.dbo.ASSICURAZIONI  AS  ASSIC  ON  A.CodAss  =  ASSIC.CodAss 
    GROUP BY  A.Targa, ASSIC.Nome 
    HAVING  COUNT ( * )  > 1  
GO  
EXEC  dbo.Query_5; 

USE  TestDB; 
GO  
CREATE PROCEDURE Query_6 
AS   
    SET NOCOUNT ON ; 
    SELECT  P.CodF, P.Nome 
    FROM  TestDB.dbo. AUTO AS  A 
        INNER JOIN  TestDB.dbo.PROPRIETARI  AS  P  ON  A.CodF  =  P.CodF 
    GROUP BY  P.CodF, P.Nome 
    HAVING  COUNT ( * )  > 1  
GO  
EXEC  dbo.Query_6; 

USE  TestDB; 
GO  
CREATE PROCEDURE Query_7 
AS   
    SET NOCOUNT ON ; 
    SELECT  A.Targa 
    FROM  TestDB.dbo. AUTO AS  A 
    WHERE  A.Targa  NOT IN ( SELECT  Targa 
    FROM  TestDB.dbo.AUTOCOINVOLTE  AS  AC 
        INNER JOIN  TestDB.dbo.SINISTRI  AS  S  ON  AC.CodS  =  S.CodS 
    WHERE  S.Data  < '2021-01-10' ) 
GO  
EXEC  dbo.Query_7; 

USE  TestDB; 
GO  
CREATE PROCEDURE Query_8 
AS   
    SET NOCOUNT ON ; 
    SELECT  S.CodS 
    FROM  TestDB.dbo.SINISTRI  AS  S 
    WHERE  S.CodS  NOT IN ( SELECT  AC.CodS 
    FROM  TestDB.dbo.AUTOCOINVOLTE  AS  AC 
        INNER JOIN  TestDB.dbo. AUTO AS  A  ON  AC.Targa  =  A.Targa 
    WHERE  A.Cilindrata  < 2000 ) 
GO  
EXEC  dbo.Query_8;
