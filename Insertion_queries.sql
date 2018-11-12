--TABLE INDIVIDUAL--(14)
INSERT INTO individual VALUES (1,'Andrea','Santamaria');
INSERT INTO individual VALUES (2,'Ary','Abittan');
INSERT INTO individual VALUES (3,'Francois','Demaison');
INSERT INTO individual VALUES (4,'Leon','Vauban');
INSERT INTO individual VALUES (5,'Mathieu','Vasseur');
INSERT INTO individual VALUES (6,'Pierre','Niney');
INSERT INTO individual VALUES (7,'Alice','Fursac');
INSERT INTO individual VALUES (8,'Ana','Girardot');
INSERT INTO individual VALUES (9,'Charles','Chaplin');
INSERT INTO individual VALUES (10,'Adenoid','Hynkel');
INSERT INTO individual VALUES (11,'Emma','Stone');
INSERT INTO individual VALUES (12,'Mia','Lalaland');
INSERT INTO individual VALUES (13,'Ryan','Gosling');
INSERT INTO individual VALUES (14,'Sebastian','Yazz');

--TABLE SALE--(7)
INSERT INTO sale VALUES (1,1,3500);
INSERT INTO sale VALUES (2,3,3000);
INSERT INTO sale VALUES (3,6,4000);
INSERT INTO sale VALUES (4,8,3600);
INSERT INTO sale VALUES (5,9,5500);
INSERT INTO sale VALUES (6,11,4500);
INSERT INTO sale VALUES (7,13,4300);

--TABLE CLIENT-(7)
INSERT INTO client VALUES (2017,2,'Coco');
INSERT INTO client VALUES (2018,4,'Paris');
INSERT INTO client VALUES (2019,5,'Paris');
INSERT INTO client VALUES (2020,7,'Paris');
INSERT INTO client VALUES (2021,10,'Monaco');
INSERT INTO client VALUES (2022,12,'Lalaland');
INSERT INTO client VALUES (2023,14,'Lalaland');

--TABLE OORDER--(7)
INSERT INTO oorder VALUES (241217,TO_DATE('24/12/2017','dd/mm/yyyyy'));
INSERT INTO oorder VALUES (441017,TO_DATE('04/10/2017','dd/mm/yyyyy'));
INSERT INTO oorder VALUES (770917,TO_DATE('07/09/2017','dd/mm/yyyyy'));
INSERT INTO oorder VALUES (441117,TO_DATE('04/11/2017','dd/mm/yyyyy'));
INSERT INTO oorder VALUES (210817,TO_DATE('21/08/2017','dd/mm/yyyyy'));
INSERT INTO oorder VALUES (310717,TO_DATE('31/07/2017','dd/mm/yyyyy'));
INSERT INTO oorder VALUES (312717,TO_DATE('31/07/2017','dd/mm/yyyyy'));

--TABLE MANAGE--(7)
INSERT INTO manage VALUES (241217,1,2017);
INSERT INTO manage VALUES (441017,3,2018);
INSERT INTO manage VALUES (770917,3,2019);
INSERT INTO manage VALUES (441117,4,2020);
INSERT INTO manage VALUES (210817,5,2021);
INSERT INTO manage VALUES (310717,6,2022);
INSERT INTO manage VALUES (312717,7,2023);

--TABLE PRODUCT--(6)
INSERT INTO product VALUES (100,'Guitar','1000.99');
INSERT INTO product VALUES (150,'Journal intime','20.88');
INSERT INTO product VALUES (151,'Sable noir livre','55.88');
INSERT INTO product VALUES (152,'Vetement femme','500.88');
INSERT INTO product VALUES (200,'Noir et blanc film','25.99');
INSERT INTO product VALUES (160,'Voyage aux etats unis','5000.88');

--TABLE CONTAIN--(7)
INSERT INTO contain VALUES (241217,100,1);
INSERT INTO contain VALUES (441017,150,2);
INSERT INTO contain VALUES (770917,151,1000);
INSERT INTO contain VALUES (441117,100,2);
INSERT INTO contain VALUES (210817,200,20);
INSERT INTO contain VALUES (310717,160,1);
INSERT INTO contain VALUES (312717,160,1);
