--9. Wypisz dane uczestników (Imie, Nazwisko, Ubezpieczyciel), którzy nie s¹ klientami naszej firmy. Wypisz klienta naszej firmy z jakim mia³ wypadek, jego samochód, oraz 
-- miejsce wypadku. Wypisz tylko uczestników, którzy nie ponosz¹ winy za wypadek.

SELECT Wypadek.data AS Data_Wypadku, Uczestnik.nazwisko AS Nazwisko_Uczestnika, Uczestnik.imie AS Imie_Uczestnika,  ubezpieczyciel AS Firma_Ubezpieczeniowa, Klient.imie AS Imie_Klienta,
	   Klient.nazwisko AS Nazwisko_Klient, Samochod.marka AS Samochod_Marka, Samochod.Model AS Samochod_Model, Wypadek.miejsce AS Adres_wypadku
	FROM Uczestnik  JOIN Klient
		ON (Uczestnik.Uczestnik2 = Klient.ID_Klienta AND Uczestnik.ubezpieczyciel != 'UZP SA')			
				JOIN Samochod
					ON (Samochod.wlasciciel = Klient.ID_Klienta)
					 JOIN Wypadek 
						ON Wypadek.pojazd = Samochod.ID_Samochodu
							JOIN Udzial
								ON (Udzial.Id_Uczestnika = Uczestnik.ID_Uczestnika AND Udzial.Wina = 'NIE')		
								ORDER BY  Data_Wypadku ASC, Nazwisko_Uczestnika ;		