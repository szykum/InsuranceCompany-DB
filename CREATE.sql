
/* Szymon Kummer 2016, Informatyka gr.5 154738 */



CREATE TABLE Klient(

	ID_Klienta						int IDENTITY(1,1) PRIMARY KEY check (Id_Klienta >= 0),
	imie							varchar(20) NOT NULL,
	nazwisko						varchar(50) NOT NULL,
	adres							varchar(60) NOT NULL,
	

);

CREATE TABLE Samochod(

	ID_Samochodu					int IDENTITY(1,1) PRIMARY KEY check (Id_Samochodu >= 0),
	rok_produkcji					int CHECK (rok_produkcji between 1800 and 2016),
	marka							varchar(20) NOT NULL,
	model							varchar(20) NOT NULL,
	kolor							varchar(15) NOT NULL,

	wlasciciel						int not null REFERENCES Klient ON DELETE CASCADE,  

);



ALTER TABLE Klient ADD Telefon		int CHECK (Telefon between 100000000 and 999999999) ;




CREATE TABLE Ubezpieczenie(

	ID_Ubezpieczenia				int IDENTITY(1,1) PRIMARY KEY check (Id_Ubezpieczenia >= 0),
	data_wydania					date not null,
	data_wygasniecia				date not null,
	kwota_ubezpieczenia				int CHECK (kwota_ubezpieczenia between 0 and 100000),
	rodzaj_ubezpieczenia			varchar(20) NOT NULL,

	pojazd int not null				REFERENCES Samochod
									ON DELETE CASCADE

);



CREATE TABLE Uczestnik(

	ID_Uczestnika					int IDENTITY(1,1) PRIMARY KEY check (Id_Uczestnika >= 0),
	imie							varchar(20) NOT NULL,
	nazwisko						varchar(50) NOT NULL,
	adres							varchar(60) NOT NULL,
	Telefon							int CHECK (Telefon between 100000000 and 999999999) ,
	ubezpieczyciel					varchar(60) NOT NULL,

	Uczestnik2						int not null REFERENCES Klient
									ON DELETE CASCADE

);

CREATE TABLE Wypadek(

	ID_Wypadku						int IDENTITY(1,1) PRIMARY KEY check (Id_Wypadku >= 0),
	data							date not null,
	miejsce							varchar(50) NOT NULL,
	godzina							varchar(10) not null,

	pojazd							int not null REFERENCES Samochod
									ON DELETE CASCADE

);


CREATE TABLE Udzial(				

	Id_Uczestnika					int not null check (Id_Uczestnika >= 0) REFERENCES Uczestnik,
	Id_Wypadku						int not null check (Id_Wypadku >= 0) REFERENCES Wypadek,
	Wina							varchar(20) NOT NULL,
	Wyrzadzone_szkody				int NOT NULL check (Wyrzadzone_szkody >= 0),
	Poniesione_szkody				int NOT NULL check (Poniesione_szkody >= 0),


	primary key (Id_Uczestnika,  Id_Wypadku),

);

CREATE TABLE Odszkodowania(

	ID_Odszkodowania				int IDENTITY(1,1) PRIMARY KEY check (Id_Odszkodowania >= 0),
	decyzja							varchar(50) NOT NULL,
	kwota_odszkodowania				int CHECK (kwota_odszkodowania between 0 and 1000000),
	Id_Uczestnika					int not null,
	Id_Wypadku						int not null,

	FOREIGN KEY (Id_Uczestnika,Id_Wypadku) REFERENCES Udzial,
	Kraksa int not null				REFERENCES Wypadek,

);


CREATE TABLE Odwolania(

	ID_Odwolania					int IDENTITY(1,1) PRIMARY KEY check (Id_Odwolania >= 0),
	data_zgloszenia					date not null,
	powod_odwolania					varchar(50) NOT NULL,
	status_oczekiwania				varchar(20) NOT NULL,

	Klient int not null				REFERENCES Klient,
	Odszkodowania int not null		REFERENCES Odszkodowania,
);

CREATE TABLE Likwidator(

	ID_Likwidatora					int IDENTITY(1,1) PRIMARY KEY check (Id_Likwidatora >= 0),
	imie							varchar(20) NOT NULL,
	nazwisko						varchar(35) NOT NULL,
	email							varchar(60) NOT NULL,
	Telefon							int CHECK (Telefon between 100000000 and 999999999) ,

);


CREATE TABLE Material(	

	ID_Ogledzin						int IDENTITY(1,1) PRIMARY KEY check (Id_Ogledzin >= 0),
	data							date not null,
	zeznanie_klienta				varchar(200) NOT NULL,
	opis_uszkodzen					varchar(200) NOT NULL,
	Id_Uczestnika					int not null,
	Id_Wypadku						int not null,

	FOREIGN KEY (Id_Uczestnika,Id_Wypadku) REFERENCES Udzial,
	Likwidatorzy int not null REFERENCES Likwidator,

);