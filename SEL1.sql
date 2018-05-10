--1.Wypisz rodzaje ubezpieczen i dla jakich aut wykupili je klienci

SELECT Klient.imie, Klient.nazwisko, Samochod.marka, Samochod.model, Ubezpieczenie.rodzaj_ubezpieczenia
	FROM Klient, Samochod, Ubezpieczenie
				WHERE Klient.ID_Klienta = Samochod.wlasciciel
				AND Ubezpieczenie.pojazd = Samochod.ID_Samochodu
	ORDER BY Klient.imie
