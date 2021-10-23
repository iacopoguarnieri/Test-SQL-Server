{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;\f1\fmodern\fcharset0 CourierNewPSMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue255;\red255\green255\blue254;\red25\green25\blue25;
\red19\green120\blue72;\red0\green0\blue0;\red144\green1\blue18;\red101\green76\blue29;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c100000;\cssrgb\c100000\c100000\c99608;\cssrgb\c12941\c12941\c12941;
\cssrgb\c3529\c53333\c35294;\cssrgb\c0\c0\c0;\cssrgb\c63922\c8235\c8235;\cssrgb\c47451\c36863\c14902;}
\paperw11900\paperh16840\margl1440\margr1440\vieww19260\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl360\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
USE\cf4 \'a0TestDB;\'a0\'a0\cb1 \
\cf2 \cb3 GO\cf4 \'a0\'a0\cb1 \
\cf2 \cb3 CREATE\cf4 \'a0\cf2 PROCEDURE\cf4 \'a0copyFileAndUploadData\cb1 \
\cf2 \cb3 AS\cf4 \'a0\'a0\'a0\cb1 \
\cb3 \'a0\'a0\'a0\'a0\cf2 SET\cf4 \'a0\cf2 NOCOUNT\cf4 \'a0\cf2 ON\cf4 ;\'a0\'a0\cf2 Declare\cf4 \'a0@FileCopy\'a0\cf2 varchar\cf4 (\cf5 1000\cf4 )\cb1 \
\cb3 \'a0\'a0\'a0\'a0\cf2 DECLARE\cf4 \'a0@FileName\'a0\cf2 varchar\cf4 (\cf5 1000\cf4 ),@SourceFileName\'a0\cf2 varchar\cf4 (\cf5 1000\cf4 )\cb1 \
\cb3 \'a0\'a0\'a0\'a0\cf2 Declare\cf4 \'a0@DestinationFolderPath\'a0\cf2 varchar\cf4 (\cf5 1000\cf4 )\cb1 \
\cb3 \'a0\'a0\'a0\'a0\cf2 set\cf4 \'a0@DestinationFolderPath\'a0\cf6 =\cf4 \'a0\cf7 'C:\\Users\\stefa\\OneDrive\\Desktop\\processed'\cf4 \cb1 \
\cb3 \'a0\'a0\'a0\'a0\cf2 Set\cf4 \'a0@SourceFileName\'a0\cf6 =\cf4 \'a0\cf7 'C:\\Users\\stefa\\OneDrive\\Desktop\\input\\sinistri.csv'\cf4 \'a0\cb1 \
\cb3 \'a0\'a0\'a0\'a0\cf2 SET\cf4 \'a0@FileCopy\'a0\cf6 =\cf4 \'a0\'a0\cf7 '\'a0COPY\'a0/Y\'a0'\cf4 \'a0\cf6 +\cf4 \'a0@SourceFileName\'a0\cf6 +\cf4 \'a0\cf7 '\'a0/B\'a0'\cf4 \'a0\cf6 +\cf4 \'a0@DestinationFolderPath 
\f1 \cf4 \cb3 +\'a0\cf7 'processed.csv'
\f0 \cf4 \cb1 \
\cb3 \'a0\'a0\'a0\'a0\cf2 print\cf4 \'a0@FileCopy\cb1 \
\cb3 \'a0\'a0\'a0\'a0\cf2 EXEC\cf4 \'a0\cf2 master\cf4 ..xp_cmdshell\'a0@FileCopy\cb1 \
\
\cb3     \cf2 BEGIN\cf4  \cf2 TRY\cf4 \cb1 \
\cb3         BULK \cf2 INSERT\cf4  SINISTRI\cb1 \
\cb3         \cf2 FROM\cf4  \cf7 '/sinistri.csv'\cf4 \cb1 \
\cb3         \cf2 WITH\cf4 (\cb1 \
\cb3             \cf2 rowterminator\cf6 =\cf7 '\\n'\cf4 ,\cb1 \
\cb3             \cf2 fieldterminator\cf6 =\cf7 ';'\cf4 \cb1 \
\cb3         )  \cb1 \
\cb3         \cf2 IF\cf4  \cf8 @@ERROR\cf4  \cf6 =\cf4  \cf5 4864\cf4 \cb1 \
\cb3             \cf2 BEGIN\cf4 \cb1 \
\cb3             \cf2 PRINT\cf4  \cf7 N'DATA ERROR'\cf4 ;\cb1 \
\cb3             \cf2 END\cf4   \cb1 \
\cb3     \cf2 END\cf4  \cf2 TRY\cf4 \cb1 \
\cb3     \cf2 BEGIN\cf4  \cf2 CATCH\cf4 \cb1 \
\cb3         \cf2 SELECT\cf4 \cb1 \
\cb3         \cf8 ERROR_NUMBER\cf4 () \cf2 AS\cf4  ErrorNumber  \cb1 \
\cb3         ,\cf8 ERROR_SEVERITY\cf4 () \cf2 AS\cf4  ErrorSeverity  \cb1 \
\cb3         ,\cf8 ERROR_STATE\cf4 () \cf2 AS\cf4  ErrorState  \cb1 \
\cb3         ,\cf8 ERROR_PROCEDURE\cf4 () \cf2 AS\cf4  ErrorProcedure  \cb1 \
\cb3         ,\cf8 ERROR_LINE\cf4 () \cf2 AS\cf4  ErrorLine  \cb1 \
\cb3         ,\cf8 ERROR_MESSAGE\cf4 () \cf2 AS\cf4  ErrorMessage;\cb1 \
\cb3     \cf2 END\cf4  \cf2 CATCH\cf4 \cb1 \
\cf2 \cb3 GO\cf4 \cb1 \
\cf2 \cb3 EXECUTE\cf4 \'a0copyFileAndUploadData;\cb1 \
\
\
\
}