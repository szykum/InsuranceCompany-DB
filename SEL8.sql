--8. Wypisz rok najnowszego i najstarszego samochodu, wsród klientów z Gdañska.

Select Min(Samochod.rok_produkcji) AS Najstarszy, Max(Samochod.rok_produkcji) as Najnowszy
	From Samochod
		where ID_Samochodu IN
			(SELECT ID_Samochodu
				FROM Klient
					WHERE Klient.adres LIKE '%Gdañsk' AND Klient.ID_Klienta = Samochod.wlasciciel);

