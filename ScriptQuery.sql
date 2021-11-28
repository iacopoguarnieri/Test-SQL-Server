{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;\f1\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue255;\red255\green255\blue254;\red25\green25\blue25;
\red0\green0\blue0;\red19\green120\blue72;\red144\green1\blue18;\red101\green76\blue29;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c100000;\cssrgb\c100000\c100000\c99608;\cssrgb\c12941\c12941\c12941;
\cssrgb\c0\c0\c0;\cssrgb\c3529\c53333\c35294;\cssrgb\c63922\c8235\c8235;\cssrgb\c47451\c36863\c14902;}
\paperw11900\paperh16840\margl1440\margr1440\vieww18100\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl360\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
USE\cf4  TestDB;  \cb1 \
\cf2 \cb3 GO\cf4   \cb1 \
\cf2 \cb3 CREATE\cf4  \cf2 PROCEDURE\cf4  Query_1 \cb1 \
\cf2 \cb3 AS\cf4    \cb1 \
\cb3     \cf2 SET\cf4  \cf2 NOCOUNT\cf4  \cf2 ON\cf4 ;  \cb1 \
\cb3     \cf2 SELECT\cf4  [Targa],[Marca]\cb1 \
\cb3     \cf2 FROM\cf4  [TestDB].[dbo].[AUTO]\cb1 \
\cb3     \cf2 WHERE\cf4  [Cilindrata] \cf5 >\cf4  \cf6 2000\cf4  \cf2 OR\cf4  [Potenza] \cf5 >\cf4  \cf6 120\cf4 ;  \cb1 \
\cf2 \cb3 GO\cf4 \cb1 \
\cf2 \cb3 EXEC\cf4  dbo.Query_1;\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f1 \cf0 \cb1 \kerning1\expnd0\expndtw0 \
\pard\pardeftab720\sl360\partightenfactor0

\f0 \cf2 \cb3 \expnd0\expndtw0\kerning0
USE\cf4  TestDB;  \cb1 \
\cf2 \cb3 GO\cf4   \cb1 \
\cf2 \cb3 CREATE\cf4  \cf2 PROCEDURE\cf4  Query_2 \cb1 \
\cf2 \cb3 AS\cf4    \cb1 \
\cb3     \cf2 SET\cf4  \cf2 NOCOUNT\cf4  \cf2 ON\cf4 ;  \cb1 \
\cb3     \cf2 SELECT\cf4  [Targa],[Nome]\cb1 \
\cb3     \cf2 FROM\cf4  [TestDB].[dbo].[AUTO] \cf2 AS\cf4  A \cf2 INNER JOIN\cf4  [TestDB].[dbo].[PROPRIETARI] \cf2 AS\cf4  P \cf2 ON\cf4  A.CodF \cf5 =\cf4  P.CodF\cb1 \
\cb3     \cf2 WHERE\cf4  [Cilindrata] \cf5 >\cf4  \cf6 2000\cf4  \cf2 OR\cf4  [Potenza] \cf5 >\cf4  \cf6 120\cf4 ;  \cb1 \
\cf2 \cb3 GO\cf4 \cb1 \
\cf2 \cb3 EXEC\cf4  dbo.Query_2;\cb1 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 USE\cf4  TestDB;  \cb1 \
\cf2 \cb3 GO\cf4   \cb1 \
\cf2 \cb3 CREATE\cf4  \cf2 PROCEDURE\cf4  Query_3 \cb1 \
\cf2 \cb3 AS\cf4    \cb1 \
\cb3     \cf2 SET\cf4  \cf2 NOCOUNT\cf4  \cf2 ON\cf4 ;  \cb1 \
\cb3     \cf2 SELECT\cf4  [Targa],P.[Nome]\cb1 \
\cb3     \cf2 FROM\cf4  [TestDB].[dbo].[AUTO] \cf2 AS\cf4  A \cf2 INNER JOIN\cf4  [TestDB].[dbo].[PROPRIETARI] \cf2 AS\cf4  P \cf2 ON\cf4  A.CodF \cf5 =\cf4  P.CodF\cb1 \
\cb3         \cf2 INNER JOIN\cf4  [TestDB].[dbo].[ASSICURAZIONI] \cf2 AS\cf4  ASSIC \cf2 ON\cf4  A.CodAss \cf5 =\cf4  ASSIC.CodAss\cb1 \
\cb3     \cf2 WHERE\cf4  ([Cilindrata] \cf5 >\cf4  \cf6 2000\cf4  \cf2 OR\cf4  [Potenza] \cf5 >\cf4  \cf6 120\cf4 ) \cf2 AND\cf4  ASSIC.Nome \cf5 =\cf4  \cf7 'SARA'\cf4 ;  \cb1 \
\cf2 \cb3 GO\cf4 \cb1 \
\cf2 \cb3 EXEC\cf4  dbo.Query_3;\cb1 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 USE\cf4  TestDB;  \cb1 \
\cf2 \cb3 GO\cf4   \cb1 \
\cf2 \cb3 CREATE\cf4  \cf2 PROCEDURE\cf4  Query_4 \cb1 \
\cf2 \cb3 AS\cf4    \cb1 \
\cb3     \cf2 SET\cf4  \cf2 NOCOUNT\cf4  \cf2 ON\cf4 ;  \cb1 \
\cb3     \cf2 SELECT\cf4  A.Targa, \cf8 COUNT\cf4 (\cf5 *\cf4 ) \cf2 AS\cf4  NSinistri\cb1 \
\cb3     \cf2 FROM\cf4  TestDB.dbo.\cf2 AUTO\cf4  \cf2 AS\cf4  A\cb1 \
\cb3         \cf2 INNER JOIN\cf4  TestDB.dbo.AUTOCOINVOLTE \cf2 AS\cf4  AC \cf2 ON\cf4  A.Targa \cf5 =\cf4  AC.Targa\cb1 \
\cb3     \cf2 WHERE\cf4  Marca \cf5 =\cf4  \cf7 'Fiat'\cf4 \cb1 \
\cb3     \cf2 GROUP BY\cf4  A.Targa; \cb1 \
\cf2 \cb3 GO\cf4 \cb1 \
\cf2 \cb3 EXEC\cf4  dbo.Query_4;\cb1 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 USE\cf4  TestDB;  \cb1 \
\cf2 \cb3 GO\cf4   \cb1 \
\cf2 \cb3 CREATE\cf4  \cf2 PROCEDURE\cf4  Query_5\cb1 \
\cf2 \cb3 AS\cf4    \cb1 \
\cb3     \cf2 SET\cf4  \cf2 NOCOUNT\cf4  \cf2 ON\cf4 ;  \cb1 \
\cb3     \cf2 SELECT\cf4  A.Targa, ASSIC.Nome, \cf8 SUM\cf4 (ImportoDelDanno) \cf2 AS\cf4  ImportoTotale\cb1 \
\cb3     \cf2 FROM\cf4  TestDB.dbo.\cf2 AUTO\cf4  \cf2 AS\cf4  A\cb1 \
\cb3         \cf2 INNER JOIN\cf4  TestDB.dbo.AUTOCOINVOLTE \cf2 AS\cf4  AC \cf2 ON\cf4  A.Targa \cf5 =\cf4  AC.Targa\cb1 \
\cb3         \cf2 INNER JOIN\cf4  TestDB.dbo.ASSICURAZIONI \cf2 AS\cf4  ASSIC \cf2 ON\cf4  A.CodAss \cf5 =\cf4  ASSIC.CodAss\cb1 \
\cb3     \cf2 GROUP BY\cf4  A.Targa, ASSIC.Nome\cb1 \
\cb3     \cf2 HAVING\cf4  \cf8 COUNT\cf4 (\cf5 *\cf4 ) \cf5 >\cf4  \cf6 1\cf4 \cb1 \
\cf2 \cb3 GO\cf4 \cb1 \
\cf2 \cb3 EXEC\cf4  dbo.Query_5;\cb1 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 USE\cf4  TestDB;  \cb1 \
\cf2 \cb3 GO\cf4   \cb1 \
\cf2 \cb3 CREATE\cf4  \cf2 PROCEDURE\cf4  Query_6\cb1 \
\cf2 \cb3 AS\cf4    \cb1 \
\cb3     \cf2 SET\cf4  \cf2 NOCOUNT\cf4  \cf2 ON\cf4 ;  \cb1 \
\cb3     \cf2 SELECT\cf4  P.CodF, P.Nome\cb1 \
\cb3     \cf2 FROM\cf4  TestDB.dbo.\cf2 AUTO\cf4  \cf2 AS\cf4  A\cb1 \
\cb3         \cf2 INNER JOIN\cf4  TestDB.dbo.PROPRIETARI \cf2 AS\cf4  P \cf2 ON\cf4  A.CodF \cf5 =\cf4  P.CodF\cb1 \
\cb3     \cf2 GROUP BY\cf4  P.CodF, P.Nome\cb1 \
\cb3     \cf2 HAVING\cf4  \cf8 COUNT\cf4 (\cf5 *\cf4 ) \cf5 >\cf4  \cf6 1\cf4 \cb1 \
\cf2 \cb3 GO\cf4 \cb1 \
\cf2 \cb3 EXEC\cf4  dbo.Query_6;\cb1 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 USE\cf4  TestDB;  \cb1 \
\cf2 \cb3 GO\cf4   \cb1 \
\cf2 \cb3 CREATE\cf4  \cf2 PROCEDURE\cf4  Query_7\cb1 \
\cf2 \cb3 AS\cf4    \cb1 \
\cb3     \cf2 SET\cf4  \cf2 NOCOUNT\cf4  \cf2 ON\cf4 ;  \cb1 \
\cb3     \cf2 SELECT\cf4  A.Targa\cb1 \
\cb3     \cf2 FROM\cf4  TestDB.dbo.\cf2 AUTO\cf4  \cf2 AS\cf4  A\cb1 \
\cb3     \cf2 WHERE\cf4  A.Targa \cf2 NOT\cf4  \cf2 IN\cf4 (\cf2 SELECT\cf4  Targa\cb1 \
\cb3                             \cf2 FROM\cf4  TestDB.dbo.AUTOCOINVOLTE \cf2 AS\cf4  AC\cb1 \
\cb3                                 \cf2 INNER JOIN\cf4  TestDB.dbo.SINISTRI \cf2 AS\cf4  S \cf2 ON\cf4  AC.CodS \cf5 =\cf4  S.CodS\cb1 \
\cb3                             \cf2 WHERE\cf4  S.Data \cf5 <\cf4  \cf7 '2021-01-10'\cf4 )\cb1 \
\cf2 \cb3 GO\cf4 \cb1 \
\cf2 \cb3 EXEC\cf4  dbo.Query_7;\cb1 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf4 \
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 USE\cf4  TestDB;  \cb1 \
\cf2 \cb3 GO\cf4   \cb1 \
\cf2 \cb3 CREATE\cf4  \cf2 PROCEDURE\cf4  Query_8\cb1 \
\cf2 \cb3 AS\cf4    \cb1 \
\cb3     \cf2 SET\cf4  \cf2 NOCOUNT\cf4  \cf2 ON\cf4 ;  \cb1 \
\cb3     \cf2 SELECT\cf4  S.CodS\cb1 \
\cb3     \cf2 FROM\cf4  TestDB.dbo.SINISTRI \cf2 AS\cf4  S\cb1 \
\cb3     \cf2 WHERE\cf4  S.CodS \cf2 NOT\cf4  \cf2 IN\cf4 (\cf2 SELECT\cf4  AC.CodS\cb1 \
\cb3                             \cf2 FROM\cf4  TestDB.dbo.AUTOCOINVOLTE \cf2 AS\cf4  AC\cb1 \
\cb3                                 \cf2 INNER JOIN\cf4  TestDB.dbo.\cf2 AUTO\cf4  \cf2 AS\cf4  A \cf2 ON\cf4  AC.Targa \cf5 =\cf4  A.Targa\cb1 \
\cb3                             \cf2 WHERE\cf4  A.Cilindrata \cf5 <\cf4  \cf6 2000\cf4 )\cb1 \
\cf2 \cb3 GO\cf4 \cb1 \
\cf2 \cb3 EXEC\cf4  dbo.Query_8;}