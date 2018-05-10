
--3. widok, ktory wypisuje wszystkich klientow po wypadku, miejsce danego wypadku + kwota odszkodowania otrzymana po nim
-- Zapytanie - Wypisz imie i nazwisko osob, ktore otrzymaly odszkodowanie i mia³y samochód wyprodukowany nie dalej jak w 2010 roku.

CREATE VIEW informacje_osoba_wypadek
	(id_klienta, imie_klienta, nazwisko_klienta, samochod_klienta_marka,samochod_klienta_model, rok_produkcji, wypadek_miejsce,wysokosc_odszkodowania) 
	AS SELECT Klient.Id_Klienta, Klient.imie, Klient.nazwisko, Samochod.marka,Samochod.model,Samochod.rok_produkcji,Wypadek.miejsce, Odszkodowania.kwota_odszkodowania
	FROM Klient, Samochod, Wypadek, Odszkodowania
	WHERE Klient.ID_Klienta = Samochod.wlasciciel
	AND Samochod.ID_Samochodu = Wypadek.pojazd
	AND Wypadek.ID_Wypadku = Odszkodowania.Id_Wypadku

SELECT nazwisko_klienta, imie_klienta
	FROM informacje_osoba_wypadek
		WHERE informacje_osoba_wypadek.id_klienta in
		( SELECT id_klienta
				FROM Samochod
					WHERE informacje_osoba_wypadek.id_klienta = Samochod.wlasciciel AND informacje_osoba_wypadek.rok_produkcji >= 2010
						AND informacje_osoba_wypadek.wysokosc_odszkodowania > 0
		)			
			ORDER BY nazwisko_klienta



SELECT * FROM informacje_osoba_wypadek
DROP VIEW informacje_osoba_wypadek