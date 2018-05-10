--4. Wypisz klientow firmy zamieszkalych w Wejherowie, ktory brali udzial w wypadku, ale go nie spowodowali

SELECT imie, nazwisko
		FROM Uczestnik
			 WHERE Uczestnik.ID_Uczestnika IN
				(SELECT Udzial.Id_Uczestnika
						FROM Udzial, Uczestnik
								WHERE Udzial.Wina = 'NIE' AND Uczestnik.ubezpieczyciel= 'UZP SA'  AND Uczestnik.ID_Uczestnika = Udzial.Id_Uczestnika ) 									AND Uczestnik.adres LIKE '%Wejherowo';													