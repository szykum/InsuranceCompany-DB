--10. Wypisz imie i nazwisko likwidatora, który zajmowa³ siê spraw¹ odszkodowania, od której decyzji wniesiono odwo³anie. 
-- Wypisz date wypadku oraz odwo³ania, zapytanie zastosuj tylko dla odwo³añ, które jeszcze nie s¹ roztrzygniête


SELECT DISTINCT Likwidator.nazwisko,  Likwidator.imie, Wypadek.miejsce, Wypadek.data AS Data_Wypadku, Odwolania.data_zgloszenia AS Data_Zlozenia_Odwolania
	FROM Likwidator JOIN Material
			on Material.Likwidatorzy = Likwidator.ID_Likwidatora
				JOIN Wypadek 
					on Material.Id_Wypadku = Wypadek.ID_Wypadku
						JOIN Odszkodowania 
							on Odszkodowania.Id_Wypadku= Wypadek.ID_Wypadku
								JOIN Odwolania 
									on Odwolania.Odszkodowania = Odszkodowania.ID_Odszkodowania
										where Odwolania.status_oczekiwania='W trakcie' 
											ORDER BY  nazwisko , Data_Zlozenia_Odwolania ASC;