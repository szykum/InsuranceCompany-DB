--6. Wypisz "najwazeniejszych" klient�w firmy czyli klient�w, kt�rzy maj� wykupione ubezpieczenie, na kwote wi�ksz� ni� �rednia wysoko�� ubezpieczenia wszystkich ubezpiecze�
-- oraz maj� czyst� histori� wypadk�w.

SELECT DISTINCT  nazwisko,imie
		FROM Klient, Samochod, Ubezpieczenie
			 WHERE (Ubezpieczenie.kwota_ubezpieczenia > (SELECT avg(Ubezpieczenie.kwota_ubezpieczenia)  FROM Ubezpieczenie) 
				AND Klient.ID_Klienta=Samochod.wlasciciel AND Ubezpieczenie.pojazd = Samochod.ID_Samochodu)
					AND  NOT EXISTS  (SELECT * FROM Wypadek
							WHERE  Wypadek.pojazd = Samochod.ID_Samochodu )
								ORDER BY Klient.nazwisko;

