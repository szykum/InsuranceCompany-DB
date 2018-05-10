--5. Wypisz klientow i ich samochody, które uczestniczy³y w wypadku i ich szacowane otrzymane szkody s¹ wiêksze badz rowne jak ich kwota ubezpieczenia.
--

SELECT  nazwisko,imie, marka, model
		FROM Klient, Samochod
			 WHERE Samochod.ID_Samochodu IN
				(SELECT Samochod.ID_Samochodu
						FROM Wypadek, Udzial, Ubezpieczenie
								WHERE Udzial.Poniesione_szkody >= Ubezpieczenie.kwota_ubezpieczenia AND Wypadek.pojazd = Ubezpieczenie.pojazd  AND Wypadek.ID_Wypadku = Udzial.Id_Wypadku AND Ubezpieczenie.pojazd = Samochod.ID_Samochodu ) 
									AND Klient.ID_Klienta = Samochod.wlasciciel								
										ORDER BY Klient.nazwisko;



								
