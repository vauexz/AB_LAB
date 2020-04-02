DROP TABLE IF EXISTS Osoba;
DROP TABLE IF EXISTS Stanowisko;
DROP TABLE IF EXISTS Adres;

CREATE TABLE Adres (
	Id INTEGER PRIMARY KEY,
	Miejscowosc VARCHAR(30),
	Ulica VARCHAR(30),
	Nr_domu INTEGER,
	Nr_mieszkania INTEGER,
	Kod_pocztowy CHAR(6)
);

CREATE TABLE Stanowisko (
	Id INTEGER PRIMARY KEY,
	Nazwa VARCHAR(30),
	Pensja DECIMAL(8, 2)
);


CREATE TABLE Osoba (
	Id INTEGER PRIMARY KEY,
	Id_adres INTEGER REFERENCES Adres(Id),
	Id_stanowisko INTEGER REFERENCES Stanowisko(Id),
	Imie VARCHAR(30),
	Nazwisko VARCHAR(30),
	Plec CHAR(1),
	Data_urodzenia DATE, 
	Pesel CHAR(11)
);

/* Zbiór wszystkich danych osobowych jest przypadkowy */

INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (1, 'Gdañsk', 'Miodowa', 50, NULL, '80-840');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (2, 'Gdañsk', 'Doskona³ej Jakoœci', 17, NULL, '80-980');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (3, 'Gdañsk', 'Kaszubska', 9, NULL, '84-104');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (4, 'Gdañsk', 'Fikcyjna', 5, NULL, '80-330');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (5, 'Gdañsk', 'Trzech Œwinek', 4, NULL, '80-822');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (6, 'Gdañsk', 'Profesorska', 3, NULL, '80-856');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (7, 'Gdañsk', 'Sklepu ¯abki', 3, NULL, '80-822');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (8, 'Gdañsk', 'Genera³a Henryka', 11, NULL, '82-222');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (9, 'Gdañsk', 'Nieœmia³a', 7, NULL, '81-980');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (10, 'Gdañsk', 'Czekoladowa', 2, NULL, '84-840');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (11, 'Gdañsk', 'Tania', 2, NULL, '82-232');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (12, 'Gdañsk', 'Ksiêdza Robaka', 3, NULL, '80-245');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (13, 'Gdañsk', 'Profesora', 3, NULL, '80-856');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (14, 'Gdañsk', 'Niemowlaka', 72, NULL, '80-840');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (15, 'Gdañsk', 'Pomalowana', 5, NULL, '82-834');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (16, 'Gdañsk', 'Ma³a', 17, NULL, '80-856');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (17, 'Gdañsk', 'Romualda Go³êbiewskiego', 45, NULL, '82-232');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (18, 'Gdañsk', 'Œwiêtego Ducha', 62, NULL, '80-980');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (19, 'Gdañsk', 'Œwietego Miko³aja', 72, NULL, '80-840');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (20, 'Sopot', 'Obroñców Wybrze¿¹', 21, NULL, '81-416');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (21, 'Sopot', 'Fryderyka Chopina', 27, NULL, '81-990');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (22, 'Sopot', 'Bartosza Zag³onego', 3, NULL, '83-840');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (23, 'Gdynia', 'Ludwika Kwaœnego', 13, NULL, '81-218');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (24, 'Gdynia', 'Wojska Polskiego', 26, NULL, '81-372');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (25, 'Gdynia', 'Ma³ej Syreny', 40, NULL, '81-840');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (26, 'Gdynia', 'Muminków', 8, NULL, '82-840');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (27, 'Gdynia', 'Teleexpressu', 3, NULL, '82-120');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (28, 'Gdynia', 'Stanis³awa Gumisia', 1, NULL, '81-219');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (29, 'Gdynia', 'Œwiatowa', 7, NULL, '84-152');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (30, 'Gdynia', 'Dyniowa', 3, NULL, '81-217');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (31, 'Gdynia', 'Aleja KFC', 36, NULL, '66-200');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (32, 'Elbl¹g', 'Kamienna', 18, NULL, '82-300');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (33, 'Elbl¹g', 'Stodo³owa', 3, NULL, '42-232');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (34, 'Elbl¹g', 'Gen. Kazimierza Sikory', 55, NULL, '42-233');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (35, 'Elbl¹g', 'Powodziowa', 30, NULL, '82-317');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (36, 'Elbl¹g', 'Polowa', 58, NULL, '44-234');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (37, 'Elbl¹g', 'Romualda Kowalskiego', 15, NULL, '45-234');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (38, 'Elbl¹g', 'Miko³aja Kopernika', 68, NULL, '46-288');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (39, 'Elbl¹g', 'Nieistniej¹cego Ruchu Oporu', 47, NULL, '84-300');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (40, 'Hel', 'Wiejska', 46, NULL, '84-150');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (41, 'Gdañsk', 'Niska', 4, 3, '80-616');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (42, 'Gdañsk', 'Kota Maurycego', 2, 7, '80-388');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (43, 'Gdañsk', 'Dziewczêca', 14, NULL, '80-399');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (44, 'Gdañsk', 'Niezale¿na', 16, 2, '80-420');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (45, 'Gdañsk', 'Niezale¿na', 16, 3, '80-420');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (46, 'Gdañsk', 'Koperka', 8, NULL, '80-336');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (47, 'Gdañsk', 'Króla Jakuba', 7, 8, '80-346');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (48, 'Gdañsk', 'Wyk³adowcy £ukasza', 6, NULL, '80-462');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (49, 'Gdañsk', 'NiedŸwiedzia Polarnego', 8, 6, '80-244');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (50, 'Gdañsk', 'Nadmorska', 66, 6, '80-506');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (51, 'Gdañsk', 'Œwiêtego Miko³aja', 49, NULL, '80-840');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (52, 'Gdañsk', 'Œwiêtego Miko³aja', 49, NULL, '80-840');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (53, 'Gdañsk', 'Tortowa', 31, 1, '80-743');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (54, 'Gdañsk', 'Braci Kiepskich', 1, NULL, '80-001');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (55, 'Gdañsk', 'Nerwowa', 27, NULL, '80-557');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (56, 'Gdañsk', 'Romualda Kowalskiego', 11, 5, '80-222');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (57, 'Gdañsk', 'D³uga', 45, 5, '80-827');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (58, 'Gdañsk', 'Romualda Go³êbiewskiego', 29, 3, '80-221');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (59, 'Gdañsk', 'Plac Belli Æwir', 15, 1, '80-001');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (60, 'Gdañsk', 'Aleja Borsuka', 46, NULL, '80-001');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (61, 'Sopot', 'Ma³omyœlna', 7, NULL, '81-813');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (62, 'Sopot', 'Bolka i Lolka', 45, NULL, '81-723');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (63, 'Sopot', 'Smerfów i Gargamela', 8, NULL, '81-720');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (64, 'Sopot', '5 Lutego', 44, NULL, '81-701');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (65, 'Gdynia', 'Krasnoludków', 2, 11, '81-174');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (66, 'Gdynia', 'Jana Kowalskiego',  21, NULL, '81-342');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (67, 'Gdynia', 'Alladyna',  24, NULL, '81-524');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (68, 'Gdynia', 'Mateusza Mi³ego',  17, 3, '81-361');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (69, 'Gdynia', 'Bezimiennego',  39, NULL, '81-364');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (70, 'Elbl¹g', 'Macieja D¹browskiego',  5, 2, '82-300');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (71, 'Elbl¹g', 'Rodziny Abramsów',  20, NULL, '82-300');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (72, 'Elbl¹g', 'Arnolda Boczka',  10, NULL, '82-300');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (73, 'Hel', 'Admira³a Nowaka',  40, NULL, '84-150');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (74, 'Hel', 'Oceanu Czerwonego',  21, NULL, '84-150');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (75, 'Koœcierzyna', 'Ocen Celuj¹cuch', 50, NULL, '80-400');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (76, 'Koœcierzyna', 'Antoniego IV', 15, NULL, '80-400');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (77, 'Koœcierzyna', 'Doliny Andrzeja', 9, NULL, '84-104');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (78, 'S³upsk', 'Kubusia Puchatka', 5, NULL, '76-215');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (79, 'S³upsk', 'Kubusia Puchatka', 4, NULL, '76-215');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (80, 'S³upsk', 'Kubusia Puchatka', 3, NULL, '76-215');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (81, 'S³upsk', 'Gier', 17, NULL, '76-200');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (82, 'S³upsk', 'Wszystkich Zdrowych', 9, NULL, '76-201');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (83, 'Wejherowo', 'Szybkiego ¯ó³wia', 5, NULL, '84-201');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (84, 'Wejherowo', 'Szybkiego ¯ó³wia', 4, NULL, '84-201');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (85, 'Wejherowo', 'Wolnego Zaj¹ca', 45, NULL, '84-201');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (86, 'Wejherowo', 'Z³otego Lwa', 17, NULL, '84-200');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (87, 'Wejherowo', 'Platynowego Je¿a', 9, NULL, '84-200');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (88, 'Wejherowo', 'Tañca Z Gwiazdami', 5, NULL, '84-200');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (89, 'W³adys³awowo', 'Wakacyjna', 14, NULL, '80-121');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (90, 'W³adys³awowo', 'Gier Planszowych', 25, NULL, '80-121');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (91, 'W³adys³awowo', 'Wakacyjna', 16, NULL, '80-121');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (92, 'W³adys³awowo', 'Falowa', 91, NULL, '84-121');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (93, 'W³adys³awowo', 'Mrówki Z', 15, NULL, '84-120');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (94, 'W³adys³awowo', 'Uciekaj¹ca', 4, NULL, '84-120');
INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES (95, 'W³adys³awowo', 'Czterech Weso³ych', 53, NULL, '84-120');

INSERT INTO Stanowisko(Id, Nazwa, Pensja)
VALUES (1, 'Kierownik', 6500);
INSERT INTO Stanowisko(Id, Nazwa, Pensja)
VALUES (2, 'Zastêpca kierowonika', 5500);
INSERT INTO Stanowisko(Id, Nazwa, Pensja)
VALUES (3, 'Kierowca', 4000);
INSERT INTO Stanowisko(Id, Nazwa, Pensja)
VALUES (4, 'Magazynier', 4200);
INSERT INTO Stanowisko(Id, Nazwa, Pensja)
VALUES (5, 'Inspektor ds. biurowych', 3200);
INSERT INTO Stanowisko(Id, Nazwa, Pensja)
VALUES (6, 'Inspektor ds. technicznych', 3500);
INSERT INTO Stanowisko(Id, Nazwa, Pensja)
VALUES (7, 'Pracownik us³ug czystoœciowych', 2500);

INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (1, 1, 1, 'Amon', 'Fabacki', 'm', '1952-09-09', '52080974913');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (2, 2, 2, 'Fidol', 'Jadacki', 'm', '1957-10-27', '57102700110');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (3, 3, 5, 'Robert', 'Kucharski', 'm', '1966-02-28', '66022814337');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (4, 4, NULL, 'Arlena', 'Len', 'k', '1978-05-15', '78051556580');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (5, 5, 4, 'Druzjan', 'S³abiak', 'm', '1992-09-11', '92091180950');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (6, 6, NULL, 'D¿on', 'Kobra', 'm', '1953-08-21', '53082199159');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (7, 7, 4, 'Klet', 'Zabacki', 'm', '1996-12-11', '96121137932');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (8, 8, 2, 'Cyrenia', 'Abbacka', 'k', '1974-04-21', '74042145885');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (9, 9, NULL, 'Mi³oœæ', 'Roztrocka', 'k', '1974-02-10', '74021039840');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (10, 10, NULL, 'Jurata', 'Komosa', 'k', '1974-07-17', '74071731488');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (11, 11, 3, 'Baldwin', 'Mleczyk', 'm', '1995-06-21', '95062197773');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (12, 12, NULL, 'Celestyn', 'Kozak', 'm', '1977-03-12', '77031236331')
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (13, 13, NULL, '¯yraf', 'Plamkowaty', 'm', '1967-08-09', '67080988136');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (14, 14, 4, 'Ilona', 'Ba³aganiarska', 'k', '1988-02-15', '88021507643');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (15, 15, 5, 'Jelena', 'Nebacka', 'k', '1989-04-17', '89041755106');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (16, 16, 4, 'Kanizjusz', 'Debacki', 'm', '1980-05-18', '80051813015');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (17, 17, 4, 'Radzimir', 'Mi³osierny', 'm', '1984-04-03', '84040363471');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (18, 18, NULL, 'Filip', 'Barwinek', 'm', '1978-12-12', '78121234451');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (19, 19, 3, 'Sabina', 'Fio³ek', 'k', '1993-05-11', '93051145529');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (20, 20, 4, 'Alojzy', 'Przeja¿d¿ka', 'm', '1993-05-11', '93051195678');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (21, 21, 5, 'Przemys³aw', 'Paszczak', 'm', '1993-01-30', '93013012098');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (22, 22, 6, 'Borys', 'Los', 'm', '1989-02-26', '89022660173');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (23, 23, 6, 'Wies³awa', 'Pryszcz', 'k', '1987-07-24', '87072442268');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (24, 24, NULL, 'Abelia', 'Kaktus', 'k', '1976-02-19', '76021920708');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (25, 25, NULL, 'Maja', 'Lebiodka', 'k', '1972-01-11', '72011116287');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (26, 26, 6, 'Pankracy', 'Bajeczny', 'm', '1999-02-13', '99021310351');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (27, 27, 7, 'Wadim', 'Zapominajka', 'm', '1964-01-13', '64011386478');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (28, 28, NULL, 'Marcel', 'Chabacki', 'm', '1973-03-24', '73032414956');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (29, 29, NULL, 'Stefan', 'Powój', 'm', '1968-02-22', '68022269797');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (30, 30, NULL, 'Anizja', 'Rabacka', 'k', '1966-07-15', '66071571726');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (31, 31, 7, 'Jagoda', 'Ró¿añska', 'k', '1972-09-11', '72091149324');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (32, 32, 7, 'Ró¿a', 'Jagodañska', 'k', '1975-01-05', '75010556968');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (33, 33, NULL, 'Leokadia', 'Jasna', 'k', '1972-03-07', '72030750868');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (34, 34, 6, 'Bianor', 'Jabacki', 'm', '1969-10-12', '69101280410');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (35, 35, 7, 'Biryn', 'Habacki', 'm', '1969-11-01', '69110165513');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (36, 36, 3, 'Fiebros³aw', 'Zami³y', 'm', '1997-11-11', '97111139534');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (37, 37, NULL, 'Zygmunt', 'Dobroczyñski', 'm', '1957-04-01', '57040193517');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (38, 38, NULL, 'Arian', 'Kabacki', 'm', '1968-02-04', '68020405197');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (39, 39, NULL, 'Franciszek', 'Gapa', 'm', '1978-01-05', '78010502113');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (40, 40, 5, 'Tomasz', 'Œwi¹tek', 'm', '1994-04-28', '94042848199');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (41, 41, 7, 'Kalistrat', 'Czapka', 'm', '1979-02-01', '79020152217');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (42, 42, 5, 'Paloma', 'Bluszcz', 'k', '1990-04-28', '90042896262');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (43, 43, NULL, 'Piotr', 'Mniszek', 'm', '1985-04-28', '85042825136');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (44, 44, NULL, 'Jan', 'Asparagus', 'm', '1979-12-17', '79121789736');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (45, 45, NULL, 'Ezio', 'Gad', 'm', '1966-07-23', '66072365418');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (46, 46, NULL, 'Irydion', 'Tulipan', 'm', '1983-07-11', '83071183171');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (47, 47, NULL, 'Aneta', 'Krecikowska', 'k', '1959-10-22', '59102299580');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (48, 48, NULL, 'Adra', 'Rekin', 'k', '1966-11-02', '66110214063');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (49, 49, NULL, 'Kalina', 'Zag³odna', 'k', '1992-11-22', '92112258387');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (50, 50, 4, 'Apostazja', 'Ciemna', 'k', '1975-11-12', '75111268841');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (51, 51, 7, 'Gustaw', 'Poznawski', 'm', '1997-09-13', '97091311294');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (52, 52, 7, 'Herweusz', 'Nocny', 'm', '1988-04-17', '88041789515');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (53, 53, 4, 'Gracjan', 'Dzienny', 'm', '1968-09-19', '68091924698');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (54, 54, NULL, 'Nikoletta', 'Ma³a', 'k', '1969-05-11', '69051104828');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (55, 55, NULL, 'Acelin', 'Pestka', 'm', '1989-09-24', '89092464958');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (56, 56, 4, 'Sabastian', '£ysy', 'm', '1999-11-11', '99111124653');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (57, 57, 3, 'Michalina', 'Lilia', 'k', '1987-02-21', '87022100121');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (58, 58, 6, 'Adamnan', 'Wymagaj¹cy', 'm', '1977-09-24', '77092410833');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (59, 59, 3, 'Bu³at', 'Nadziewany', 'm', '1976-01-30', '76013043855');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (60, 60, 7, 'Stefan', 'Balon', 'm', '1956-02-10', '56021081355');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (61, 61, NULL, 'Edda', 'K¹kol', 'k', '1963-05-29', '63052971188');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (62, 62, 4, 'Faina', 'Dyniowska', 'k', '1960-11-07', '60110788900');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (63, 63, NULL, 'Kosma', 'Ostro¿ny', 'm', '1953-10-26', '53102617894');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (64, 64, 5, 'Symplicjusz', 'Fikus', 'm', '1957-03-30', '57033099871');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (65, 65, 6, 'Linda', 'Mak', 'k', '1978-05-15', '78051564949');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (66, 66, NULL, 'Liboriusz', 'Gladiola', 'm', '1977-11-18', '77111815351');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (67, 67, NULL, 'Ksaweryna', 'Miêta', 'k', '1953-05-04', '53050419902');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (68, 68, 5, 'Antonia', 'Gorczyca', 'k', '1961-01-02', '61010240565');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (69, 69, 6, 'Wawrzyniec', 'Rumianek', 'm', '1955-08-07', '55080737713');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (70, 70, 6, 'Abira', 'Bogata', 'k', '1972-02-01', '72020112469');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (71, 71, 3, 'Benicjusz', 'Naparczywy', 'm', '1988-09-19', '88091938914');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (72, 72, 4, 'Kordian', 'Jasnota', 'm', '1979-07-10', '79071058210');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (73, 73, NULL, 'Balladyna', 'Malina', 'k', '1974-01-01', '74010198202');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (74, 74, NULL, 'Boromeusz', 'Chmiel', 'm', '1967-11-22', '67112274851');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (75, 75, 6, 'Ramona', 'Obañska', 'k', '1987-12-21', '87122161604');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (76, 76, NULL, 'Eufrozyna', 'Pokrzywa', 'k', '1966-09-09', '66090997668');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (77, 77, 3, 'Dafroza', 'Trawnik', 'k', '1987-08-09', '87080934722');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (78, 78, 4, 'Borys', 'Pokrzyk', 'm', '1993-07-17', '93071706997');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (79, 79, 6, 'Nina', 'Kosaciec', 'k', '1994-01-11', '94011195565');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (80, 80, 5, 'Felin', 'Dziurawiec', 'm', '1991-01-16', '91011638274');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (81, 81, 7, 'Kalikst', '£ubin', 'm', '1968-09-16', '68091682150');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (82, 82, 3, 'Krystyna', 'Bronk', 'k', '1977-10-15', '77101540544');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (83, 83, 5, 'Scholastyka', 'B³awatek', 'k', '1963-07-18', '63071823662');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (84, 84, NULL, 'Linus', 'Pacha', 'm', '1968-12-18', '68121862635');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (85, 85, 6, 'Marzanna', 'Macierzanka', 'k', '1979-03-03', '79030342684');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (86, 86, 5, 'Ramzes', 'Koniczyna', 'm', '1994-02-07', '94020744556');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (87, 87, NULL, 'Ronald', 'Lubiany', 'm', '1967-09-14', '67091482098');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (88, 88, 4, 'Florian', 'Ma³omyœlny', 'm', '1978-10-27', '78102700474');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (89, 89, 3, 'Nela', 'Ma³omyœlna', 'k', '1979-09-17', '79091794783');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (90, 90, 7, 'Marcis³aw', 'Buja', 'm', '1980-02-12', '80021246937');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (91, 91, 5, 'Natalia', 'Kochanek', 'k', '1990-01-02', '90010210863');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (92, 92, 3, 'Nadia', 'Ebacka', 'k', '1992-01-03', '92010319863');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (93, 93, NULL, 'Ninian', '£opian', 'm', '1980-06-12', '80061229730');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (94, 94, NULL, 'Benedykt', 'Chaper', 'm', '1987-02-10', '87021022277');
INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (95, 95, 4, 'Ksawery', 'Melon', 'm', '1985-06-05', '85060541575');


--ZAD1--
DROP PROCEDURE IF EXISTS zwiekszPensje
go
CREATE PROCEDURE zwiekszPensje @PROCENT INT, @STANOWISKO VARCHAR(30)
AS
UPDATE Stanowisko SET Pensja = Pensja + (Pensja * @PROCENT/100) WHERE Nazwa=@STANOWISKO; 
go

--ZAD2--
DROP PROCEDURE IF EXISTS usun
go
CREATE PROCEDURE usun @MIEJSCOWOSC VARCHAR(30)
AS
DELETE FROM Osoba WHERE Id_adres IN (SELECT Id FROM Adres WHERE Miejscowosc = @MIEJSCOWOSC);
DELETE FROM Adres WHERE Miejscowosc = @MIEJSCOWOSC;
go

--ZAD3--
DROP FUNCTION IF EXISTS zad3
go
CREATE FUNCTION zad3(@d1 DATE, @d2 DATE)
RETURNS INT
BEGIN
	RETURN (
		SELECT COUNT(*) FROM Osoba 
		WHERE Data_urodzenia BETWEEN @d1 AND @d2 
		OR Data_urodzenia BETWEEN @d2 AND @d1
	)
END
go

--ZAD4--
DROP FUNCTION IF EXISTS zad4
go
CREATE FUNCTION zad4(@KWOTA FLOAT)
RETURNS CHAR(11)
BEGIN
	RETURN (
		SELECT TOP 1 Pesel FROM Osoba O
		INNER JOIN Stanowisko S
		ON S.Id = O.Id_stanowisko
		WHERE S.Pensja > @KWOTA
		ORDER BY Data_urodzenia ASC
	)
END
go

--ZAD5--
DROP VIEW IF EXISTS zad5
GO
CREATE VIEW zad5 
AS
	SELECT (
		CASE
		WHEN Plec = 'k' THEN 'Kobiety'
		ELSE 'Mê¿czyŸni'
		END
	) AS Plec,
	COUNT(*) as 'Liczba zatrudnionych',
	MAX(Pensja) as 'Najwiêksza pensja',
	MIN(Pensja) as 'Najni¿sza pensja',
	AVG(Pensja) as 'Œrednia pensja'
	FROM Osoba JOIN Stanowisko
	ON Osoba.Id_stanowisko = Stanowisko.Id
	GROUP BY Plec
GO

--ZAD6--

DROP VIEW IF EXISTS zad6
GO
CREATE VIEW zad6
AS
	SELECT Miejscowosc, 
	COUNT(*) as 'Liczba osob z zarobkami wiêkszymi ni¿ œrednia'
	FROM Osoba JOIN Stanowisko
	ON Osoba.Id_stanowisko = Stanowisko.Id
	JOIN Adres AS A
	ON Osoba.Id_adres = A.Id
	WHERE Pensja > (
		SELECT AVG(Pensja) FROM Osoba
		JOIN Stanowisko
		ON Osoba.Id_stanowisko = Stanowisko.Id
	)
	GROUP BY Miejscowosc
GO

--ZAD7--
DROP PROCEDURE IF EXISTS zad7
GO
CREATE PROCEDURE zad7 
	@Imie VARCHAR(30), @Nazwisko VARCHAR(30), @Plec CHAR(1), @Data_urodzenia DATE, @Pesel CHAR(11),
	@Miejscowosc VARCHAR(30), @Ulica VARCHAR(30), @Nr_domu INTEGER, @Nr_mieszkania INTEGER, @Kod_pocztowy CHAR(6),
	@Nazwa VARCHAR(30)
AS
	DECLARE @stanowiskoID INT = (SELECT Id FROM Stanowisko WHERE Nazwa=@Nazwa),
			@adresID INT = ((SELECT TOP 1 Id FROM Adres ORDER BY Id DESC) + 1),
			@osobaID INT =  ((SELECT TOP 1 Id FROM Osoba ORDER BY Id DESC) + 1)
	
	IF @stanowiskoID IS NOT NULL
	BEGIN

		INSERT INTO Adres(Id, Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
		VALUES (@adresID, @Miejscowosc, @Ulica, @Nr_domu, @Nr_mieszkania, @Kod_pocztowy)

		INSERT INTO Osoba(Id, Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
		VALUES (@osobaID, @adresID, @stanowiskoID, @imie, @Nazwisko, @Plec, @Data_urodzenia, @pesel)
	END
GO

--ZAD8--
DROP FUNCTION IF EXISTS ZAD8
GO
CREATE FUNCTION zad8(@osobaID INT)
RETURNS DECIMAL(8,2)
BEGIN
	DECLARE @stanowiskoID INT = (SELECT Id_stanowisko FROM Osoba WHERE Id = @osobaID),
			@wiek INT = (SELECT DATEDIFF(YEAR, Data_urodzenia, GETDATE()) FROM Osoba WHERE Id=@osobaID),
			@pensja DECIMAL(8,2) = (SELECT Pensja FROM Osoba JOIN Stanowisko ON Osoba.Id_stanowisko = Stanowisko.Id WHERE Osoba.Id = @osobaID)

	IF @stanowiskoID IS NULL
		RETURN 0
	ELSE IF @wiek < 26
		RETURN @pensja
	RETURN @pensja - (0.0976 + 0.015 + 0.0245) * @pensja
END
GO

--ZAD9--
DROP VIEW IF EXISTS zad9
GO
CREATE VIEW zad9 
AS
	SELECT SUM(
		CASE
		WHEN (((SUBSTRING(Pesel, 10, 1) % 2 = 0) AND Plec='k') OR ((SUBSTRING(Pesel, 10, 1) % 2 = 1) AND Plec='m')) THEN 1
		ELSE 0
		END
	) AS Prawid³owa, SUM(
		CASE
		WHEN (((SUBSTRING(Pesel, 10, 1) % 2 = 0) AND Plec='k') OR ((SUBSTRING(Pesel, 10, 1) % 2 = 1) AND Plec='m')) THEN 0
		ELSE 1
		END
	) AS Nieprawdid³owa FROM Osoba
GO
SELECT * FROM zad9
