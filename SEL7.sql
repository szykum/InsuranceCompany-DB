--7. Wypisz rodzaje i ilosc ubezpieczen wykupionych przez klientow z Sopotu



SELECT Ubezpieczenie.rodzaj_ubezpieczenia , COUNT(Ubezpieczenie.rodzaj_ubezpieczenia) AS 'ilosc'
	FROM Ubezpieczenie, Samochod, Klient 
		WHERE  Ubezpieczenie.pojazd = Samochod.ID_Samochodu AND Klient.ID_Klienta = Samochod.wlasciciel AND
			Klient.adres LIKE '%Sopot'
				GROUP BY  Ubezpieczenie.rodzaj_ubezpieczenia
					ORDER BY  COUNT(Ubezpieczenie.rodzaj_ubezpieczenia) DESC ;

