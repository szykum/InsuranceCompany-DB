--6. Wypisz "najwazeniejszych" klientów firmy czyli klientów, którzy maj¹ wykupione ubezpieczenie, na kwote wiêksz¹ ni¿ œrednia wysokoœæ ubezpieczenia wszystkich ubezpieczeñ
-- oraz maj¹ czyst¹ historiê wypadków.

SELECT DISTINCT  nazwisko,imie
		FROM Klient, Samochod, Ubezpieczenie
			 WHERE (Ubezpieczenie.kwota_ubezpieczenia > (SELECT avg(Ubezpieczenie.kwota_ubezpieczenia)  FROM Ubezpieczenie) 
				AND Klient.ID_Klienta=Samochod.wlasciciel AND Ubezpieczenie.pojazd = Samochod.ID_Samochodu)
					AND  NOT EXISTS  (SELECT * FROM Wypadek
							WHERE  Wypadek.pojazd = Samochod.ID_Samochodu )
								ORDER BY Klient.nazwisko;

