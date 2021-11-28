{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red15\green112\blue1;\red255\green255\blue254;\red25\green25\blue25;
\red0\green0\blue255;\red0\green0\blue0;\red19\green120\blue72;\red144\green1\blue18;}
{\*\expandedcolortbl;;\cssrgb\c0\c50196\c0;\cssrgb\c100000\c100000\c99608;\cssrgb\c12941\c12941\c12941;
\cssrgb\c0\c0\c100000;\cssrgb\c0\c0\c0;\cssrgb\c3529\c53333\c35294;\cssrgb\c63922\c8235\c8235;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl360\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
-- drop the existing trigger\cf4 \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 DROP\cf4  TRIGGER \cf5 IF\cf4  \cf5 EXISTS\cf4  [AmountRevalutaszionAfterInsertFromCSV] \cb1 \
\cf5 \cb3 GO\cf4 \cb1 \
\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \cb3 -- create a new trigger\cf4 \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 CREATE\cf4  TRIGGER [AmountRevalutaszionAfterInsertFromCSV] \cb1 \
\cf5 \cb3 ON\cf4  TestDB.[dbo].[SINISTRI] \cb1 \
\cf5 \cb3 AFTER\cf4  \cf5 INSERT\cf4 \cb1 \
\cf5 \cb3 AS\cf4  \cb1 \
\cf5 \cb3 BEGIN\cf4    \cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf4 \cb3     \cf5 SET\cf4  \cf5 NOCOUNT\cf4  \cf5 ON\cf4 ;\cb1 \
\
\cb3     \cf5 UPDATE\cf4  AUOCOINVOLTE \cb1 \
\cb3     \cf5 SET\cf4   ImportoDelDanno \cf6 =\cf4  ImportoDelDanno \cf6 -\cf4  (ImportoDelDanno \cf6 *\cf4  \cf7 10\cf4 ) \cf6 /\cf4  \cf7 100\cf4 \cb1 \
\cb3     \cf5 FROM\cf4  AUOCOINVOLTE AC\cb1 \
\cb3         \cf5 INNER JOIN\cf4  SINISTRI S \cf5 ON\cf4  AC.CodS \cf6 =\cf4  S.CodS\cb1 \
\cb3         \cf5 INNER JOIN\cf4  \cf5 AUTO\cf4  A \cf5 ON\cf4  A.Targa \cf6 =\cf4  AC.Targa\cb1 \
\cb3         \cf5 INNER JOIN\cf4  PROPRIETARI P \cf5 ON\cf4  P.CodF \cf6 =\cf4  A.CodF\cb1 \
\cb3         \cf5 INNER JOIN\cf4  ASSICURAZIONI ASSIC \cf5 ON\cf4  ASSIC.CodAss \cf6 =\cf4  A.CodAss\cb1 \
\cb3     \cf5 WHERE\cf4  S.Data \cf6 <\cf4  \cf8 '2021-01-20'\cf4  \cf5 AND\cf4  P.Residenza \cf6 <>\cf4  ASSIC.Sede\cb1 \
\pard\pardeftab720\sl360\partightenfactor0
\cf5 \cb3 END\cf4 \cb1 \
\cf5 \cb3 GO\cf4 \
}