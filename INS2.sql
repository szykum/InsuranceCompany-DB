INSERT INTO Klient VALUES ('Bob','Marley', 'ul. Zielona 4, Gdañsk', '648321123');
INSERT INTO Klient VALUES ('£ukiesz','£epek', 'ul. LoLa 18, Wejherowo', '798654321');
INSERT INTO Klient VALUES ('Axl','Rose', 'ul. Pi³sudskiego 2, Gdañsk', '123458659');
INSERT INTO Klient VALUES ('Jan','Kowalski', 'ul. Szybka 4, Gdynia', '654785231');
INSERT INTO Klient VALUES ('Kurt','Cobain', 'ul. Wolna 3, Poznañ', '101354987');
INSERT INTO Klient VALUES ('Anna','Kowalewska', 'ul. Jasna 444, Wroc³aw', '795321546');
INSERT INTO Klient VALUES ('Agata','Krauzewicz', 'ul. Ciemna 16, Kraków', '779542121');
INSERT INTO Klient VALUES ('Jacek','Zielony', 'ul. Niska 41, Sopot', '766654123');
INSERT INTO Klient VALUES ('Zenon','Martyniuk', 'ul. Wysoka 34, Gdynia', '666542132');
INSERT INTO Klient VALUES ('Donald','Trump', 'ul. Czerwona 69, Wejherowo', '546321777');
INSERT INTO Klient VALUES ('Hilary','Clinton', 'ul. Z³ota 132, Gdañsk', '595951123');
INSERT INTO Klient VALUES ('Krzysztof','Ibisz', 'ul. Idealna 10, Wejherowo', '696696696');
INSERT INTO Klient VALUES ('Mariusz','Wlazly', 'ul. Gulgowskiego 40, Sopot', '604604603');
INSERT INTO Klient VALUES ('Andrzej','Kolanko', 'ul. Krasickiego 99, Gdañsk', '665432111');
INSERT INTO Klient VALUES ('Ewelina','Baleron', 'ul. Mickiewicza 51, Sopot', '789789456');
INSERT INTO Klient VALUES ('Joanna','Fajna', 'ul. Kwasniewskiego 666, Gdynia', '888555222');
INSERT INTO Klient VALUES ('Barbara','Fajnonazwiskowa', 'ul. Niez³a 101, Wroc³aw', '707808909');
INSERT INTO Klient VALUES ('Marcin','Marcinkowski', 'ul. Nawetnawet 12, Kraków', '999885522');
INSERT INTO Klient VALUES ('Dariusz','Glut', 'ul. Ciekawa 4B, Warszawa', '696646606');
INSERT INTO Klient VALUES ('Helena','Wondraczkowa', 'ul. Nudna 12, Poznañ', '605603601');
INSERT INTO Klient VALUES ('Zbigniew','Wodecki', 'ul. Pszczó³ki 51, Wejherowo', '784981002');
INSERT INTO Klient VALUES ('Joe','Perry', 'ul. Aerosmith 21, Sopot', '998420321');
INSERT INTO Klient VALUES ('Steven','Tyler', 'ul. Bardzo G³oœna 621, Sopot', '900200123');


/*--------------------------------------------------------------------------------------------------------------------------------*/

INSERT INTO Likwidator   VALUES('Adrian', 'Cobain', 'AdrianCobain@UZP_SA.pl','660000132'); 
INSERT INTO Likwidator   VALUES('Cris', 'Adamczyk', 'CrisAdamczyk@UZP_SA.pl','512030209'); 
INSERT INTO Likwidator   VALUES('Alex', 'Morela', 'CrisMorela@UZP_SA.pl','975111587'); 
INSERT INTO Likwidator   VALUES('Judasz', 'Hendrix', 'JudaszHendrix@UZP_SA.pl','752741321'); 
INSERT INTO Likwidator   VALUES('Cris', 'Formela', 'CrisFormela@UZP_SA.pl','564563301'); 
INSERT INTO Likwidator   VALUES('Roman', 'Superasny', 'RomanMorela@UZP_SA.pl','555601016'); 

/*--------------------------------------------------------------------------------------------------------------------------------*/



INSERT INTO Uczestnik VALUES ('Bob','Marley', 'ul. Zielona 4, Gdañsk', '648321123','UZP SA',(SELECT ID_Klienta FROM Klient WHERE imie ='Bob' AND nazwisko = 'Marley'));
INSERT INTO Uczestnik VALUES ('£ukiesz','£epek', 'ul. LoLa 18, Wejherowo', '798654321','UZP SA',(SELECT ID_Klienta FROM Klient WHERE imie ='£ukiesz' AND nazwisko = '£epek'));
INSERT INTO Uczestnik VALUES ('Axl','Rose', 'ul. Pi³sudskiego 2, Gdañsk', '123458659','UZP SA',(SELECT ID_Klienta FROM Klient WHERE imie ='Axl' AND nazwisko = 'Rose'));
INSERT INTO Uczestnik VALUES ('Anna','Kowalewska', 'ul. Jasna 444, Wroc³aw', '795321546','UZP SA',(SELECT ID_Klienta FROM Klient WHERE imie ='Anna' AND nazwisko = 'Kowalewska'));
INSERT INTO Uczestnik VALUES ('Donald','Trump', 'ul. Czerwona 69, Wejherowo', '546321777','UZP SA',(SELECT ID_Klienta FROM Klient WHERE imie ='Donald' AND nazwisko = 'Trump'));
INSERT INTO Uczestnik VALUES ('Hilary','Clinton', 'ul. Z³ota 132, Gdañsk', '595951123','UZP SA',(SELECT ID_Klienta FROM Klient WHERE imie ='Hilary' AND nazwisko = 'Clinton'));
INSERT INTO Uczestnik VALUES ('Helena','Wondraczkowa', 'ul. Nudna 12, Poznañ', '605603601','UZP SA',(SELECT ID_Klienta FROM Klient WHERE imie ='Helena' AND nazwisko = 'Wondraczkowa'));
INSERT INTO Uczestnik VALUES ('Dariusz','Glut', 'ul. Ciekawa 4B, Warszawa', '696646606','UZP SA',(SELECT ID_Klienta FROM Klient WHERE imie ='Dariusz' AND nazwisko = 'Glut'));
INSERT INTO Uczestnik VALUES ('Agata','Krauzewicz', 'ul. Ciemna 16, Kraków', '779542121','UZP SA',(SELECT ID_Klienta FROM Klient WHERE imie ='Agata' AND nazwisko = 'Krauzewicz'));
INSERT INTO Uczestnik VALUES ('Joanna','Fajna', 'ul. Kwasniewskiego 666, Gdynia', '888555222','UZP SA',(SELECT ID_Klienta FROM Klient WHERE imie ='Joanna' AND nazwisko = 'Fajna'));
INSERT INTO Uczestnik VALUES ('Zbigniew','Wodecki', 'ul. Pszczó³ki 51, Wejherowo', '784981002','UZP SA',(SELECT ID_Klienta FROM Klient WHERE imie ='Zbigniew' AND nazwisko = 'Wodecki'));


INSERT INTO Uczestnik VALUES ('Angelina','Jolie', 'ul. Pitowa 33, Gdañsk', '605603601','PZU',(SELECT ID_Klienta FROM Klient WHERE imie ='Bob' AND nazwisko = 'Marley'));
INSERT INTO Uczestnik VALUES ('Harry','Potter', 'ul. Magiczna 1, Gdañsk', '605603601','UZP SA',(SELECT ID_Klienta FROM Klient WHERE imie ='£ukiesz' AND nazwisko = '£epek'));
INSERT INTO Uczestnik VALUES ('Lord','Voldemort', 'ul. Szlamowa 42, Wejherowo', '605603601','PZU',(SELECT ID_Klienta FROM Klient WHERE imie ='Bob' AND nazwisko = 'Marley'));			
INSERT INTO Uczestnik VALUES ('Bilbo','Baggins', 'ul. Pierœcienia 18, Bolszewo', '605603601','AXA',(SELECT ID_Klienta FROM Klient WHERE imie ='Donald' AND nazwisko = 'Trump'));
INSERT INTO Uczestnik VALUES ('Grzegorz','Schetyna', 'ul. Tak 22, Sopot', '605603601','Liberty',(SELECT ID_Klienta FROM Klient WHERE imie ='Hilary' AND nazwisko = 'Clinton'));
INSERT INTO Uczestnik VALUES ('BB','King', 'ul. Bluesa 124, Gdynia', '605603601','Link4',(SELECT ID_Klienta FROM Klient WHERE imie ='Dariusz' AND nazwisko = 'Glut'));
INSERT INTO Uczestnik VALUES ('Morgan','Freeman', 'ul. Szybka 3, Goscicino', '765157000','PZU',(SELECT ID_Klienta FROM Klient WHERE imie ='Bob' AND nazwisko = 'Marley'));
INSERT INTO Uczestnik VALUES ('Witold','Zak', 'ul. Wisniewskiego 11, Sopot', '954333116','UZP SA',(SELECT ID_Klienta FROM Klient WHERE imie ='Joanna' AND nazwisko = 'Fajna'));
INSERT INTO Uczestnik VALUES ('Dariusz','Kwiecinski', 'ul. Szymbora 3, Wejherowo', '789465654','PZU',(SELECT ID_Klienta FROM Klient WHERE imie ='Agata' AND nazwisko = 'Krauzewicz'));			
INSERT INTO Uczestnik VALUES ('Lukasz','Kwiatkowski', 'ul. Grechuty 18, Gdansk', '665456303','AXA',(SELECT ID_Klienta FROM Klient WHERE imie ='Axl' AND nazwisko = 'Rose'));
INSERT INTO Uczestnik VALUES ('Mieczyslaw','Bieber', 'ul. Najczadowsza 82, Sopot', '844321000','Liberty',(SELECT ID_Klienta FROM Klient WHERE imie ='Donald' AND nazwisko = 'Trump'));
INSERT INTO Uczestnik VALUES ('Andrzej','Bednarek', 'ul. Nietakazla 12, Szymbark', '556552558','Link4',(SELECT ID_Klienta FROM Klient WHERE imie ='Hilary' AND nazwisko = 'Clinton'));
INSERT INTO Uczestnik VALUES ('Ryszard','Rynkowski', 'ul. Muzyczna 2, Sopot', '888444000','Link4',(SELECT ID_Klienta FROM Klient WHERE imie ='Zbigniew' AND nazwisko = 'Wodecki'));
INSERT INTO Uczestnik VALUES ('Artur','Tym', 'ul. Wyboista 12, Wejherowo', '654101327','AXA',(SELECT ID_Klienta FROM Klient WHERE imie ='Helena' AND nazwisko = 'Wondraczkowa'));

/*--------------------------------------------------------------------------------------------------------------------------------*/



INSERT INTO Samochod   VALUES(2008, 'Toyota', 'Yaris', 'Czarna',(SELECT ID_Klienta FROM Klient WHERE imie ='Jan' AND nazwisko = 'Kowalski'));
INSERT INTO Ubezpieczenie   VALUES('2016-06-13','2017-06-13', '2500', 'OC' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(2008, 'Ferrari', 'Testarossa', 'Czarna',(SELECT ID_Klienta FROM Klient WHERE imie ='Steven' AND nazwisko = 'Tyler'));
INSERT INTO Ubezpieczenie   VALUES('2016-06-13','2017-06-13', '3980', 'OC' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(2000, 'Fiat', 'Maluch', 'Szary',(SELECT ID_Klienta FROM Klient WHERE imie ='Jacek' AND nazwisko = 'Zielony'));
INSERT INTO Ubezpieczenie   VALUES('2016-04-20', '2017-04-20', '10000', 'AC' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(2006, 'Ford', 'Mustang', 'Szary',(SELECT ID_Klienta FROM Klient WHERE imie ='Zenon' AND nazwisko = 'Martyniuk'));
INSERT INTO Ubezpieczenie   VALUES('2015-03-25', '2016-03-25', '3570', 'AC' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(2015, 'Opel', 'Astra', 'Czerwony',(SELECT ID_Klienta FROM Klient WHERE imie ='Kurt' AND nazwisko = 'Cobain'));
INSERT INTO Ubezpieczenie   VALUES('2014-05-16', '2016-05-16', '1500', 'NNW' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(2011, 'Opel', 'Insignia', 'Bialy',(SELECT ID_Klienta FROM Klient WHERE imie ='Krzysztof' AND nazwisko = 'Ibisz'));
INSERT INTO Ubezpieczenie   VALUES('2014-05-16', '2016-05-16', '5420', 'OC' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(1995, 'Mercedez', 'Benz', 'Rozowy',(SELECT ID_Klienta FROM Klient WHERE imie ='Mariusz' AND nazwisko = 'Wlazly'));
INSERT INTO Ubezpieczenie   VALUES('2015-12-10', '2016-12-10', '12000', 'AC' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(2005, 'Bmw', 'X5', 'Czarny',(SELECT ID_Klienta FROM Klient WHERE imie ='Andrzej' AND nazwisko = 'Kolanko'));
INSERT INTO Ubezpieczenie   VALUES('2015-12-05', '2016-12-05', '5500', 'OC' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(2003, 'Fiat', 'Multipla', 'Zielony',(SELECT ID_Klienta FROM Klient WHERE imie ='Ewelina' AND nazwisko = 'Baleron'));
INSERT INTO Ubezpieczenie   VALUES('2015-12-09', '2016-12-09', '10500', 'NNW' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(2010, 'Bmw', 'X3', 'Szary',(SELECT ID_Klienta FROM Klient WHERE imie ='Barbara' AND nazwisko = 'Fajnonazwiskowa'));
INSERT INTO Ubezpieczenie   VALUES('2015-08-15', '2016-08-15', '5000', 'OC' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(2014, 'Audi', 'A5', 'Bialy',(SELECT ID_Klienta FROM Klient WHERE imie ='Marcin' AND nazwisko = 'Marcinkowski'));
INSERT INTO Ubezpieczenie   VALUES('2014-08-20', '2016-08-20', '4500', 'AC' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(2003, 'Audi', 'A6', 'Niebieski',(SELECT ID_Klienta FROM Klient WHERE imie ='Zenon' AND nazwisko = 'Martyniuk'));
INSERT INTO Ubezpieczenie   VALUES('2014-05-26', '2016-05-26', '3500', 'NNW' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(2012, 'Rolls Royce', 'Phantom', 'Czarny',(SELECT ID_Klienta FROM Klient WHERE imie ='Zenon' AND nazwisko = 'Martyniuk'));
INSERT INTO Ubezpieczenie   VALUES('2014-05-26', '2016-05-26', '6000', 'AC' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(1999, 'Peugeot', '305', 'Zielony',(SELECT ID_Klienta FROM Klient WHERE imie ='Krzysztof' AND nazwisko = 'Ibisz'));
INSERT INTO Ubezpieczenie   VALUES('2015-09-30', '2016-09-30', '8500', 'AC' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(1995, 'Alfa Romeo', '159', 'Z³ota',(SELECT ID_Klienta FROM Klient WHERE imie ='Krzysztof' AND nazwisko = 'Ibisz'));
INSERT INTO Ubezpieczenie   VALUES('2015-09-05', '2016-09-05', '2000', 'OC' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(2004, 'Renault', 'Megane', 'Brazowy',(SELECT ID_Klienta FROM Klient WHERE imie ='Mariusz' AND nazwisko = 'Wlazly'));
INSERT INTO Ubezpieczenie   VALUES('2015-08-19', '2016-08-19', '7000', 'OC' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(2008, 'Volkswagen', 'Passat', 'Bialy',(SELECT ID_Klienta FROM Klient WHERE imie ='Ewelina' AND nazwisko = 'Baleron'));
INSERT INTO Ubezpieczenie   VALUES('2014-12-12', '2016-12-12', '4500', 'OC' ,IDENT_CURRENT('Samochod')); 


INSERT INTO Samochod   VALUES(2010, 'Renault', 'Clio', 'Grafitowy',(SELECT ID_Klienta FROM Klient WHERE imie ='Kurt' AND nazwisko = 'Cobain'));
INSERT INTO Ubezpieczenie   VALUES('2015-10-10', '2016-10-10', '3500', 'OC' ,IDENT_CURRENT('Samochod')); 

INSERT INTO Samochod   VALUES(2010, 'Renault', 'Kangoo', 'Bialy',(SELECT ID_Klienta FROM Klient WHERE imie ='Joe' AND nazwisko = 'Perry'));
INSERT INTO Ubezpieczenie   VALUES('2015-10-10', '2016-10-10', '3500', 'NNW' ,IDENT_CURRENT('Samochod')); 





/*--------------------------------------------------------------------------------------------------------------------------------*/


/*1*/
INSERT INTO Samochod   VALUES(2008, 'Toyota', 'Corolla', 'Niebieska',(SELECT ID_Klienta FROM Klient WHERE imie ='Bob' AND nazwisko = 'Marley'));
INSERT INTO Wypadek	  VALUES('2016-01-20', 'ul. Przemyslowa, Gdañsk', '14:30', IDENT_CURRENT('Samochod'));
INSERT INTO Ubezpieczenie   VALUES('2015-10-10', '2016-10-10', '5500', 'OC' ,IDENT_CURRENT('Samochod')); 
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Bob' AND nazwisko = 'Marley'), IDENT_CURRENT('Wypadek'),'TAK', '2557','1250');
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Angelina' AND nazwisko = 'Jolie'), IDENT_CURRENT('Wypadek'),'NIE', '1250','2557');
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Lord' AND nazwisko = 'Voldemort'), IDENT_CURRENT('Wypadek'),'NIE', '1000','1500');
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Morgan' AND nazwisko = 'Freeman'), IDENT_CURRENT('Wypadek'),'NIE', '2400','3210');
INSERT INTO Odszkodowania VALUES ('rozpatrzone negatywnie','0', (SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Bob' AND nazwisko = 'Marley'),  IDENT_CURRENT('Wypadek'), IDENT_CURRENT('Wypadek'));
INSERT INTO Odwolania VALUES ('2016-05-05','Odwolanie od decyzji', 'W trakcie', (SELECT ID_Klienta FROM Klient WHERE imie ='Bob' AND nazwisko = 'Marley'), IDENT_CURRENT('Odszkodowania'));
INSERT INTO Material   VALUES('2016-01-25', 'Uderzenie samochodu w drzewo z powodu poslizgu','Wgnieciona maska, zderzak, wygiete kolo',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Bob' AND nazwisko = 'Marley'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Adrian' AND nazwisko='Cobain'));
INSERT INTO Material   VALUES('2016-01-25', 'Uderzenie samochodu, ktory przygrzmoci³ w drzewo','Uszkodzenie silnika',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Angelina' AND nazwisko = 'Jolie'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Adrian' AND nazwisko='Cobain'));

/*2*/
INSERT INTO Samochod   VALUES(2010, 'Seat', 'Ibiza', 'Czarna',(SELECT ID_Klienta FROM Klient WHERE imie ='£ukiesz' AND nazwisko = '£epek'));
INSERT INTO Wypadek	  VALUES('2016-02-13', 'ul. Niska, Wejherowo', '10:25', IDENT_CURRENT('Samochod'));
INSERT INTO Ubezpieczenie   VALUES('2015-10-10', '2016-10-10', '2500', 'AC' ,IDENT_CURRENT('Samochod')); 
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='£ukiesz' AND nazwisko = '£epek'), IDENT_CURRENT('Wypadek'),'NIE', '3501','1750');
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Harry' AND nazwisko = 'Potter'), IDENT_CURRENT('Wypadek'),'TAK', '1750','3501');
INSERT INTO Odszkodowania VALUES ('rozpatrzone pozytywnie','3500', (SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='£ukiesz' AND nazwisko = '£epek'),  IDENT_CURRENT('Wypadek'), IDENT_CURRENT('Wypadek'));
INSERT INTO Material   VALUES('2016-02-20', 'Wymuszono na mnie pierwszenstwo','Wgniecione drzwi',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='£ukiesz' AND nazwisko = '£epek'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Cris' AND nazwisko='Adamczyk'));


/*3*/
INSERT INTO Samochod   VALUES(2010, 'Subaru', 'Impreza', 'Niebieska',(SELECT ID_Klienta FROM Klient WHERE imie ='Axl' AND nazwisko = 'Rose'));
INSERT INTO Wypadek	  VALUES('2016-10-10', 'ul. Hansa Solo, Reda', '08:30', IDENT_CURRENT('Samochod'));
INSERT INTO Ubezpieczenie   VALUES('2015-09-10', '2016-09-10', '10000', 'OC' ,IDENT_CURRENT('Samochod')); 
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Axl' AND nazwisko = 'Rose'), IDENT_CURRENT('Wypadek'),'NIE', '3500','2500');
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Lukasz' AND nazwisko = 'Kwiatkowski'), IDENT_CURRENT('Wypadek'),'TAK', '2500','3500');
INSERT INTO Odszkodowania VALUES ('rozpatrzone pozytywnie','5000', (SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Axl' AND nazwisko = 'Rose'),  IDENT_CURRENT('Wypadek'), IDENT_CURRENT('Wypadek'));
INSERT INTO Material   VALUES('2016-10-13', 'Zostalem potracony przez pijanego kierowce','Wgnieciony tyl, tylni zderzak, zbita tylnia szyba',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Axl' AND nazwisko = 'Rose'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Alex' AND nazwisko='Morela'));
INSERT INTO Material   VALUES('2016-10-13', 'Lol to on by³ pijany, a nie ja','Maska i zderzak wgnieciony',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Lukasz' AND nazwisko = 'Kwiatkowski'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Alex' AND nazwisko='Morela'));


/*4*/
INSERT INTO Samochod   VALUES(2016, 'Audi', 'Q7', 'Zielony',(SELECT ID_Klienta FROM Klient WHERE imie ='Anna' AND nazwisko = 'Kowalewska'));
INSERT INTO Wypadek	  VALUES('2016-06-01', 'ul. Mickiewicza, Bolszewo', '14:30', IDENT_CURRENT('Samochod'));
INSERT INTO Ubezpieczenie   VALUES('2015-05-10', '2016-05-10', '1500', 'AC' ,IDENT_CURRENT('Samochod')); 
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Anna' AND nazwisko = 'Kowalewska'), IDENT_CURRENT('Wypadek'),'TAK', '2500','1500');
INSERT INTO Odszkodowania VALUES ('rozpatrzone negatywnie','0', (SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Anna' AND nazwisko = 'Kowalewska'),  IDENT_CURRENT('Wypadek'), IDENT_CURRENT('Wypadek'));
INSERT INTO Material   VALUES('2016-01-25', 'Uderzylam w samochod wyjezdzajacy z ulicy Krasinskiego','Wgnieciona maska, uszkodzony silnik',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Anna' AND nazwisko = 'Kowalewska'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Cris' AND nazwisko='Formela'));


/*5*/
INSERT INTO Samochod   VALUES(2000, 'Audi', 'Q5', 'Bia³y',(SELECT ID_Klienta FROM Klient WHERE imie ='Donald' AND nazwisko = 'Trump'));
INSERT INTO Wypadek	  VALUES('2016-02-25', 'ul. Broniewskiego, Luzino', '08:20', IDENT_CURRENT('Samochod'));
INSERT INTO Ubezpieczenie   VALUES('2015-12-12', '2016-12-12', '6000', 'NNW' ,IDENT_CURRENT('Samochod')); 
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Donald' AND nazwisko = 'Trump'), IDENT_CURRENT('Wypadek'),'TAK', '1570','1000');
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Bilbo' AND nazwisko = 'Baggins'), IDENT_CURRENT('Wypadek'),'NIE', '1000','1570');
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Mieczyslaw' AND nazwisko = 'Bieber'), IDENT_CURRENT('Wypadek'),'NIE', '2000','1000');
INSERT INTO Odszkodowania VALUES ('rozpatrzone negatywnie','0', (SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Donald' AND nazwisko = 'Trump'),  IDENT_CURRENT('Wypadek'), IDENT_CURRENT('Wypadek'));
INSERT INTO Odwolania VALUES ('2016-05-05','Odwolanie od decyzji', 'W trakcie', (SELECT ID_Klienta FROM Klient WHERE imie ='Donald' AND nazwisko = 'Trump'), IDENT_CURRENT('Odszkodowania'));
INSERT INTO Material   VALUES('2016-06-02', 'Zapatrzylem sie na ladna kobiete, wpadlem do rzeki','Wszystko zalane',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Donald' AND nazwisko = 'Trump'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Judasz' AND nazwisko='Hendrix'));


/*6*/
INSERT INTO Samochod   VALUES(2005, 'Laborghini', 'Aventador', 'Niebieska',(SELECT ID_Klienta FROM Klient WHERE imie ='Hilary' AND nazwisko = 'Clinton'));
INSERT INTO Wypadek	  VALUES('2016-07-14', 'ul. Krasinskiego, Lebork', '19:55', IDENT_CURRENT('Samochod'));
INSERT INTO Ubezpieczenie   VALUES('2015-10-10', '2016-10-10', '3500', 'AC' ,IDENT_CURRENT('Samochod')); 
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Hilary' AND nazwisko = 'Clinton'), IDENT_CURRENT('Wypadek'),'NIE', '5000','4000');
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Grzegorz' AND nazwisko = 'Schetyna'), IDENT_CURRENT('Wypadek'),'TAK', '4000','5000');
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Andrzej' AND nazwisko = 'Bednarek'), IDENT_CURRENT('Wypadek'),'TAK', '1000','1200');
INSERT INTO Odszkodowania VALUES ('rozpatrzone pozytywnie','3500', (SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Hilary' AND nazwisko = 'Clinton'),  IDENT_CURRENT('Wypadek'), IDENT_CURRENT('Wypadek'));
INSERT INTO Material   VALUES('2016-08-01', 'Poslizg z powodu nieodsniezonej drogi, dachowanie','Wsio wgniecione',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Hilary' AND nazwisko = 'Clinton'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Roman' AND nazwisko='Superasny'));


/*7*/
INSERT INTO Samochod   VALUES(2011, 'Ford', 'Focus', 'Czarny',(SELECT ID_Klienta FROM Klient WHERE imie ='Helena' AND nazwisko = 'Wondraczkowa'));
INSERT INTO Wypadek	  VALUES('2016-05-05', 'ul. Wysoka, Sopot', '12:45', IDENT_CURRENT('Samochod'));
INSERT INTO Ubezpieczenie   VALUES('2015-01-15', '2016-01-15', '2000', 'OC' ,IDENT_CURRENT('Samochod')); 
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Helena' AND nazwisko = 'Wondraczkowa'), IDENT_CURRENT('Wypadek'),'TAK', '1500','1500');
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Artur' AND nazwisko = 'Tym'), IDENT_CURRENT('Wypadek'),'NIE', '1500','1500');
INSERT INTO Odszkodowania VALUES ('rozpatrzone negatywnie','0', (SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Helena' AND nazwisko = 'Wondraczkowa'),  IDENT_CURRENT('Wypadek'), IDENT_CURRENT('Wypadek'));
INSERT INTO Odwolania VALUES ('2016-02-02','Odwolanie od decyzji', 'W trakcie', (SELECT ID_Klienta FROM Klient WHERE imie ='Helena' AND nazwisko = 'Wondraczkowa'), IDENT_CURRENT('Odszkodowania'));
INSERT INTO Material   VALUES('2016-01-25', 'Zderzenie czolowe','Wgnieciona maska, zbita przednia szyba',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Helena' AND nazwisko = 'Wondraczkowa'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Alex' AND nazwisko='Morela'));


/*8*/
INSERT INTO Samochod   VALUES(2013, 'Ford', 'Fiesta', 'Z³oty',(SELECT ID_Klienta FROM Klient WHERE imie ='Dariusz' AND nazwisko = 'Glut'));
INSERT INTO Wypadek	  VALUES('2016-08-19', 'ul. Szybka, Pruszcz', '02:35', IDENT_CURRENT('Samochod'));
INSERT INTO Ubezpieczenie   VALUES('2015-10-01', '2016-10-01', '1500', 'NNW' ,IDENT_CURRENT('Samochod')); 
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Dariusz' AND nazwisko = 'Glut'), IDENT_CURRENT('Wypadek'),'NIE', '7500','6500');
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='BB' AND nazwisko = 'King'), IDENT_CURRENT('Wypadek'),'TAK', '6500','7500');
INSERT INTO Odszkodowania VALUES ('rozpatrzone pozytywnie','1500', (SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Dariusz' AND nazwisko = 'Glut'),  IDENT_CURRENT('Wypadek'), IDENT_CURRENT('Wypadek'));
INSERT INTO Material   VALUES('2016-01-25', 'Samochod za mna nie zachowal odpowiedniej odleglosci i uderzy mi w tyl','Zbita tylnia lampa',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Dariusz' AND nazwisko = 'Glut'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Cris' AND nazwisko='Adamczyk'));


/*9*/
INSERT INTO Samochod   VALUES(2003, 'Volvo', 'V40', 'Srebrny',(SELECT ID_Klienta FROM Klient WHERE imie ='Agata' AND nazwisko = 'Krauzewicz'));
INSERT INTO Wypadek	  VALUES('2016-04-01', 'ul. Smieszna, Zakopane', '17:35', IDENT_CURRENT('Samochod'));
INSERT INTO Ubezpieczenie   VALUES('2015-10-10', '2016-10-10', '2000', 'OC' ,IDENT_CURRENT('Samochod')); 
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Agata' AND nazwisko = 'Krauzewicz'), IDENT_CURRENT('Wypadek'),'TAK', '2000','2005');
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Dariusz' AND nazwisko = 'Kwiecinski'), IDENT_CURRENT('Wypadek'),'NIE', '2005','2000');
INSERT INTO Odszkodowania VALUES ('rozpatrzone negatywnie','0', (SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Agata' AND nazwisko = 'Krauzewicz'),  IDENT_CURRENT('Wypadek'), IDENT_CURRENT('Wypadek'));
INSERT INTO Odwolania VALUES ('2016-05-05','Odwolanie od decyzji', 'Odrzucone', (SELECT ID_Klienta FROM Klient WHERE imie ='Agata' AND nazwisko = 'Krauzewicz'), IDENT_CURRENT('Odszkodowania'));
INSERT INTO Material   VALUES('2016-01-25', 'Uderzenie samochodu latarnie','Wgnieciona maska',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Agata' AND nazwisko = 'Krauzewicz'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Judasz' AND nazwisko='Hendrix'));
INSERT INTO Material   VALUES('2016-01-25', 'Pani Agata wpad³a w poœlizg i obszorowa³a mnie','Przeszorowany bok',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Dariusz' AND nazwisko = 'Kwiecinski'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Judasz' AND nazwisko='Hendrix'));


/*10*/
INSERT INTO Samochod   VALUES(2008, 'Porsche', 'Cayenne', 'Czarny',(SELECT ID_Klienta FROM Klient WHERE imie ='Joanna' AND nazwisko = 'Fajna'));
INSERT INTO Wypadek	  VALUES('2016-03-15', 'ul. Graniczna, Wejherowo', '09:30', IDENT_CURRENT('Samochod'));
INSERT INTO Ubezpieczenie   VALUES('2015-05-10', '2016-05-10', '3400', 'AC' ,IDENT_CURRENT('Samochod')); 
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Joanna' AND nazwisko = 'Fajna'), IDENT_CURRENT('Wypadek'),'TAK', '2000','1000');
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Witold' AND nazwisko = 'Zak'), IDENT_CURRENT('Wypadek'),'NIE', '1000','2000');
INSERT INTO Odszkodowania VALUES ('rozpatrzone pozytywnie','2000', (SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Joanna' AND nazwisko = 'Fajna'),  IDENT_CURRENT('Wypadek'), IDENT_CURRENT('Wypadek'));
INSERT INTO Material   VALUES('2016-01-25', 'Wymuszenie na mnie pierszenstwa','Lewy bok przerysowany',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Joanna' AND nazwisko = 'Fajna'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Adrian' AND nazwisko='Cobain'));
INSERT INTO Material   VALUES('2016-01-25', 'Pani Joanna nie zna siê na znakach i wyjecha³a mi gdzie ja mia³em pierszeñstwo','Lewy bok przerysowany',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Witold' AND nazwisko = 'Zak'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Adrian' AND nazwisko='Cobain'));

/*11*/
INSERT INTO Samochod   VALUES(2010, 'Peugeot', '501', 'Zielony',(SELECT ID_Klienta FROM Klient WHERE imie ='Zbigniew' AND nazwisko = 'Wodecki'));
INSERT INTO Wypadek	  VALUES('2016-04-10', 'ul. Graniczna, Wejherowo', '11:30', IDENT_CURRENT('Samochod'));
INSERT INTO Ubezpieczenie   VALUES('2015-08-10', '2016-08-10', '4000', 'OC' ,IDENT_CURRENT('Samochod')); 
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Zbigniew' AND nazwisko = 'Wodecki'), IDENT_CURRENT('Wypadek'),'NIE', '4000','4000');
INSERT INTO Udzial VALUES ((SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Ryszard' AND nazwisko = 'Rynkowski'), IDENT_CURRENT('Wypadek'),'TAK', '5130','4000');
INSERT INTO Odszkodowania VALUES ('rozpatrzone pozytywnie','4000', (SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Zbigniew' AND nazwisko = 'Wodecki'),  IDENT_CURRENT('Wypadek'), IDENT_CURRENT('Wypadek'));
INSERT INTO Material   VALUES('2016-04-11', 'Wymuszenie na mnie pierszenstwa','Ty³ skasowany',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Zbigniew' AND nazwisko = 'Wodecki'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Roman' AND nazwisko='Superasny'));
INSERT INTO Material   VALUES('2016-04-11', 'Wymuszenie na mnie pierszenstwa','Przod skasowany',(SELECT ID_Uczestnika FROM Uczestnik WHERE imie ='Ryszard' AND nazwisko = 'Rynkowski'),  IDENT_CURRENT('Wypadek'),(SELECT ID_Likwidatora FROM Likwidator WHERE imie='Roman' AND nazwisko='Superasny'));



/*--------------------------------------------------------------------------------------------------------------------------------*/

