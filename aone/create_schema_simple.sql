--------------------------------------------------------
--  File created - Sat-7-Sep-2019
--------------------------------------------------------

--------------------------------------------------------
--  DDL for Table ITEMS_CTD
--------------------------------------------------------

  CREATE TABLE "ITEMS_CTD"
   (  "ITEM_ID" NUMBER(10,0),
  "ITEM_TITLE" VARCHAR2(100),
  "ITEM_DESC" VARCHAR2(2000),
  "ITEM_POST_DATE" DATE DEFAULT sysdate,
  "ITEM_POSTED_BY" NUMBER(10,0),
  "ITEM_BOUGHT_BY" NUMBER(10,0),
  "ITEM_PRICE" NUMBER(4,0),
  "ITEM_STATUS" VARCHAR2(25)
   ) ;


REM INSERTING into ITEMS_CTD
SET DEFINE OFF;
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (8,'Italian Antique Hand-Painted Porcelain Trinket Boxes','Antique hand-painted porcelain trinket boxes with hinged lids, purchased in 1985 at the Clignancourt Flea Market in Paris, mint condition, $75 each',to_date('09-JUL-15','DD-MON-RR'),6,null,70,'cancelled');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (2,'Pool tables, 1" Slate, Real Wood, NO MDF','Key Features:',to_date('09-JUL-15','DD-MON-RR'),4,null,1450,'available');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (3,'2 pack tennis rackets','got some tennis rackets but they were not at a professional standard. still at great quality and awesome for anyone who wants to start playing tennis',to_date('09-JUL-15','DD-MON-RR'),4,null,50,'sold');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (21,'Pool table','My pool table for sale',to_date('12-JUL-15','DD-MON-RR'),4,null,100,'sold');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (22,'Used macbook','MBP 15 in retina 2012 model in great condition',to_date('12-JUL-15','DD-MON-RR'),7,null,1650,'available');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (61,'Bicycle','My Schwinn Bike is ready to go',to_date('04-AUG-15','DD-MON-RR'),81,null,100,'sold');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (7,'White Alabaster Egg (mint condition)','White alabaster egg, approximately 3 inches long, mint condition, $5',to_date('09-JUL-15','DD-MON-RR'),5,null,5,'available');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (9,'Garden Tool Organizer / Bicycle Storage Rack - 36"','Are you tired of tripping over a bunch of loose garden tools in your garage? Are your brooms, rakes, shovels, bicycles etc. always in a big cluttered mess? As a machine shop owner, I make a really nice, possibly the best, Garage Organizer - Garden Tool - Bicycle Storage Rack, where you can neatly hang these items.',to_date('09-JUL-15','DD-MON-RR'),7,null,89,'available');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (10,'***2004 Yamaha R6 Motorcycle*** clean title***','For sale a clean 2004 Yamaha R6 factory blue with 27k commuting miles. Clean title in hand and current registration. Excellent condition. A few minor mods liked front signals, rear eliminator kit, integrated taillight, a rear solo seat cowl and frame sliders. All service up to date. Nothing is needed.',to_date('09-JUL-15','DD-MON-RR'),8,null,3600,'sold');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (12,'VOX Standard 24 Guitar- Made in Japan','This is a Vox Standard 24 3503, made some time between 1979 and 82. It works great and holds it''s tuning, but it shows its wear. Consistent with it''s age, this guitar has lots of dings, impressions, edge chipping, scratches and swirling (Pictures provided). ',to_date('09-JUL-15','DD-MON-RR'),10,null,500,'available');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (5,'Kinetic by Kurt Road Machine Indoor Bicycle Trainer','Kinetic by Kurt Road Machine Indoor Bicycle Trainer and front wheel stand.',to_date('09-JUL-15','DD-MON-RR'),1,null,200,'sold');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (6,'Cross Country Ski Boots and Skis','Kinetic by Kurt Road Machine Indoor Bicycle Trainer and rear wheel stand.',to_date('09-JUL-15','DD-MON-RR'),4,null,20,'available');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (11,'1940''s Noritake Japan China Set','1940''s Noritake Japan China Set',to_date('09-JUL-15','DD-MON-RR'),9,null,150,'sold');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (41,'Samsung galaxy s6 active','I''m trying to sell or trade my galaxy s5 active, I would trade for a video game system or I would just sell it straight out. Serious inquiries only.',to_date('13-JUL-15','DD-MON-RR'),12,null,255,'sold');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (4,'unboxed iphone 6','Recd it as a birthday gift from my uncle but I already have a phone so don''t need this. Unboxed with recpt',to_date('09-JUL-15','DD-MON-RR'),3,null,600,'available');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (13,'Guitar','My used guitar',to_date('09-JUL-15','DD-MON-RR'),11,null,100,'available');
Insert into ITEMS_CTD (ITEM_ID,ITEM_TITLE,ITEM_DESC,ITEM_POST_DATE,ITEM_POSTED_BY,ITEM_BOUGHT_BY,ITEM_PRICE,ITEM_STATUS) values (1,'2015 Star 36v golf cart...barely used','Features include:',to_date('09-JUL-15','DD-MON-RR'),2,null,5650,'available');
