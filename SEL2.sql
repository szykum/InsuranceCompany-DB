--2. Wypisz klientow firmy oraz ilosc ich samochodow, ktore sa w naszej firmie ubezpieczone, uporzadkuj malejaco

SELECT Klient.nazwisko,Klient.imie , COUNT(Samochod.ID_Samochodu) AS 'ilosc pojazdow'
	FROM Klient LEFT JOIN Samochod
		ON Klient.ID_Klienta = Samochod.wlasciciel
			GROUP BY  Klient.imie, Klient.nazwisko
				ORDER BY COUNT(Samochod.ID_Samochodu) DESC 
