USE TestDB;  
GO  
CREATE PROCEDURE copyFileAndUploadData
AS   
    SET NOCOUNT ON;  Declare @FileCopy varchar(1000)
    DECLARE @FileName varchar(1000),@SourceFileName varchar(1000)
    Declare @DestinationFolderPath varchar(1000)
    set @DestinationFolderPath = 'C:\Users\stefa\OneDrive\Desktop\processed'
    Set @SourceFileName = 'C:\Users\stefa\OneDrive\Desktop\input\sinistri.csv' 
    SET @FileCopy =  ' COPY /Y ' + @SourceFileName + ' /B ' + @DestinationFolderPath + 'processed.csv'
    print @FileCopy
    EXEC master..xp_cmdshell @FileCopy

    BEGIN TRY
        BULK INSERT SINISTRI
        FROM '/sinistri.csv'
        WITH(
            rowterminator='\n',
            fieldterminator=';'
        )  
        IF @@ERROR = 4864
            BEGIN
            PRINT N'DATA ERROR';
            END  
    END TRY
    BEGIN CATCH
        SELECT
        ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_SEVERITY() AS ErrorSeverity  
        ,ERROR_STATE() AS ErrorState  
        ,ERROR_PROCEDURE() AS ErrorProcedure  
        ,ERROR_LINE() AS ErrorLine  
        ,ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
GO
EXECUTE copyFileAndUploadData;
