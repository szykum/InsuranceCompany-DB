--8. Wypisz rok najnowszego i najstarszego samochodu, wsr�d klient�w z Gda�ska.

Select Min(Samochod.rok_produkcji) AS Najstarszy, Max(Samochod.rok_produkcji) as Najnowszy
	From Samochod
		where ID_Samochodu IN
			(SELECT ID_Samochodu
				FROM Klient
					WHERE Klient.adres LIKE '%Gda�sk' AND Klient.ID_Klienta = Samochod.wlasciciel);

