DROP TABLE IF EXISTS Osoba;
DROP TABLE IF EXISTS Stanowisko;
DROP TABLE IF EXISTS Adres;
CREATE TABLE Adres (
	Miejscowosc VARCHAR(30),
	Ulica VARCHAR(30),
	Nr_domu INTEGER,
	Nr_mieszkania INTEGER,
	Kod_pocztowy CHAR(6)
);
CREATE TABLE Stanowisko (
	Nazwa VARCHAR(30),
	Pensja DECIMAL(8, 2)
);

CREATE TABLE Osoba (
	Imie VARCHAR(30),
	Nazwisko VARCHAR(30),
	Plec CHAR(1),
	Data_urodzenia DATE, 
	Pesel CHAR(11)
);
--ZAD1--
ALTER TABLE Adres 
ADD CHECK(Nr_mieszkania > 0)

ALTER TABLE Adres 
ADD CHECK(Nr_domu > 0)
---------
ALTER TABLE Stanowisko
ALTER COLUMN Nazwa VARCHAR(30) NOT NULL

ALTER TABLE Stanowisko
ALTER COLUMN Pensja DECIMAL(8,2) NOT NULL

ALTER TABLE Stanowisko
ADD CHECK(Pensja > 0)
---------
ALTER TABLE Osoba
ALTER COLUMN Imie VARCHAR(30) NOT NULL

ALTER TABLE Osoba
ALTER COLUMN Nazwisko VARCHAR(30) NOT NULL

ALTER TABLE Osoba
ALTER COLUMN Data_urodzenia DATE NOT NULL

ALTER TABLE Osoba
ADD CHECK(Data_urodzenia < GETDATE())

ALTER TABLE Osoba
ALTER COLUMN Pesel CHAR(11) NOT NULL

ALTER TABLE Osoba
ADD CHECK(Plec IN ('k', 'm'))

--ZAD2--
ALTER TABLE Adres
ADD Id INT PRIMARY KEY IDENTITY(1,1)

ALTER TABLE Stanowisko
ADD Id INT PRIMARY KEY IDENTITY(1,1)

ALTER TABLE Osoba
ADD Id INT PRIMARY KEY IDENTITY(1,1)

--ZAD3--
ALTER TABLE Osoba
ADD Id_adres INT  NOT NULL FOREIGN KEY
REFERENCES Adres(Id)
ON DELETE CASCADE
ON UPDATE CASCADE

ALTER TABLE Osoba
ADD Id_stanowisko INT FOREIGN KEY
REFERENCES Stanowisko(Id)
ON UPDATE CASCADE

--ZAD4--
/* Zbiór wszystkich danych osobowych jest przypadkowy */

INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Miodowa', 50, NULL, '80-840');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Doskona³ej Jakoœci', 17, NULL, '80-980');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Kaszubska', 9, NULL, '84-104');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Fikcyjna', 5, NULL, '80-330');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Trzech Œwinek', 4, NULL, '80-822');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Profesorska', 3, NULL, '80-856');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Sklepu ¯abki', 3, NULL, '80-822');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Genera³a Henryka', 11, NULL, '82-222');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Nieœmia³a', 7, NULL, '81-980');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Czekoladowa', 2, NULL, '84-840');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Tania', 2, NULL, '82-232');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Ksiêdza Robaka', 3, NULL, '80-245');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Profesora', 3, NULL, '80-856');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Niemowlaka', 72, NULL, '80-840');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Pomalowana', 5, NULL, '82-834');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Ma³a', 17, NULL, '80-856');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Romualda Go³êbiewskiego', 45, NULL, '82-232');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Œwiêtego Ducha', 62, NULL, '80-980');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Œwietego Miko³aja', 72, NULL, '80-840');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Sopot', 'Obroñców Wybrze¿¹', 21, NULL, '81-416');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Sopot', 'Fryderyka Chopina', 27, NULL, '81-990');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Sopot', 'Bartosza Zag³onego', 3, NULL, '83-840');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdynia', 'Ludwika Kwaœnego', 13, NULL, '81-218');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdynia', 'Wojska Polskiego', 26, NULL, '81-372');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdynia', 'Ma³ej Syreny', 40, NULL, '81-840');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdynia', 'Muminków', 8, NULL, '82-840');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdynia', 'Teleexpressu', 3, NULL, '82-120');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdynia', 'Stanis³awa Gumisia', 1, NULL, '81-219');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdynia', 'Œwiatowa', 7, NULL, '84-152');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdynia', 'Dyniowa', 3, NULL, '81-217');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdynia', 'Aleja KFC', 36, NULL, '66-200');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Elbl¹g', 'Kamienna', 18, NULL, '82-300');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Elbl¹g', 'Stodo³owa', 3, NULL, '42-232');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Elbl¹g', 'Gen. Kazimierza Sikory', 55, NULL, '42-233');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Elbl¹g', 'Powodziowa', 30, NULL, '82-317');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Elbl¹g', 'Polowa', 58, NULL, '44-234');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Elbl¹g', 'Romualda Kowalskiego', 15, NULL, '45-234');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Elbl¹g', 'Miko³aja Kopernika', 68, NULL, '46-288');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Elbl¹g', 'Nieistniej¹cego Ruchu Oporu', 47, NULL, '84-300');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Hel', 'Wiejska', 46, NULL, '84-150');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Niska', 4, 3, '80-616');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Kota Maurycego', 2, 7, '80-388');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Dziewczêca', 14, NULL, '80-399');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Niezale¿na', 16, 2, '80-420');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Niezale¿na', 16, 3, '80-420');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Koperka', 8, NULL, '80-336');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Króla Jakuba', 7, 8, '80-346');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Wyk³adowcy £ukasza', 6, NULL, '80-462');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'NiedŸwiedzia Polarnego', 8, 6, '80-244');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Nadmorska', 66, 6, '80-506');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Œwiêtego Miko³aja', 49, NULL, '80-840');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Œwiêtego Miko³aja', 49, NULL, '80-840');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Tortowa', 31, 1, '80-743');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Braci Kiepskich', 1, NULL, '80-001');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Nerwowa', 27, NULL, '80-557');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Romualda Kowalskiego', 11, 5, '80-222');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'D³uga', 45, 5, '80-827');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Romualda Go³êbiewskiego', 29, 3, '80-221');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Plac Belli Æwir', 15, 1, '80-001');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdañsk', 'Aleja Borsuka', 46, NULL, '80-001');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Sopot', 'Ma³omyœlna', 7, NULL, '81-813');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Sopot', 'Bolka i Lolka', 45, NULL, '81-723');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Sopot', 'Smerfów i Gargamela', 8, NULL, '81-720');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Sopot', '5 Lutego', 44, NULL, '81-701');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdynia', 'Krasnoludków', 2, 11, '81-174');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdynia', 'Jana Kowalskiego',  21, NULL, '81-342');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdynia', 'Alladyna',  24, NULL, '81-524');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdynia', 'Mateusza Mi³ego',  17, 3, '81-361');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Gdynia', 'Bezimiennego',  39, NULL, '81-364');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Elbl¹g', 'Macieja D¹browskiego',  5, 2, '82-300');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Elbl¹g', 'Rodziny Abramsów',  20, NULL, '82-300');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Elbl¹g', 'Arnolda Boczka',  10, NULL, '82-300');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Hel', 'Admira³a Nowaka',  40, NULL, '84-150');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Hel', 'Oceanu Czerwonego',  21, NULL, '84-150');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Koœcierzyna', 'Ocen Celuj¹cuch', 50, NULL, '80-400');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Koœcierzyna', 'Antoniego IV', 15, NULL, '80-400');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Koœcierzyna', 'Doliny Andrzeja', 9, NULL, '84-104');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('S³upsk', 'Kubusia Puchatka', 5, NULL, '76-215');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('S³upsk', 'Kubusia Puchatka', 4, NULL, '76-215');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('S³upsk', 'Kubusia Puchatka', 3, NULL, '76-215');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('S³upsk', 'Gier', 17, NULL, '76-200');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('S³upsk', 'Wszystkich Zdrowych', 9, NULL, '76-201');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Wejherowo', 'Szybkiego ¯ó³wia', 5, NULL, '84-201');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Wejherowo', 'Szybkiego ¯ó³wia', 4, NULL, '84-201');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Wejherowo', 'Wolnego Zaj¹ca', 45, NULL, '84-201');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Wejherowo', 'Z³otego Lwa', 17, NULL, '84-200');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Wejherowo', 'Platynowego Je¿a', 9, NULL, '84-200');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('Wejherowo', 'Tañca Z Gwiazdami', 5, NULL, '84-200');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('W³adys³awowo', 'Wakacyjna', 14, NULL, '80-121');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('W³adys³awowo', 'Gier Planszowych', 25, NULL, '80-121');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('W³adys³awowo', 'Wakacyjna', 16, NULL, '80-121');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('W³adys³awowo', 'Falowa', 91, NULL, '84-121');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('W³adys³awowo', 'Mrówki Z', 15, NULL, '84-120');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('W³adys³awowo', 'Uciekaj¹ca', 4, NULL, '84-120');
INSERT INTO Adres(Miejscowosc, Ulica, Nr_domu, Nr_mieszkania, Kod_pocztowy)
VALUES ('W³adys³awowo', 'Czterech Weso³ych', 53, NULL, '84-120');

INSERT INTO Stanowisko(Nazwa, Pensja)
VALUES ('Kierownik', 6500);
INSERT INTO Stanowisko(Nazwa, Pensja)
VALUES ('Zastêpca kierowonika', 5500);
INSERT INTO Stanowisko(Nazwa, Pensja)
VALUES ('Kierowca', 4000);
INSERT INTO Stanowisko(Nazwa, Pensja)
VALUES ('Magazynier', 4200);
INSERT INTO Stanowisko(Nazwa, Pensja)
VALUES ('Inspektor ds. biurowych', 3200);
INSERT INTO Stanowisko(Nazwa, Pensja)
VALUES ('Inspektor ds. technicznych', 3500);
INSERT INTO Stanowisko(Nazwa, Pensja)
VALUES ('Pracownik us³ug czystoœciowych', 2500);

INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (1, 1, 'Amon', 'Fabacki', 'm', '1952-09-09', '52080974913');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (2, 2, 'Fidol', 'Jadacki', 'm', '1957-10-27', '57102700110');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (3, 5, 'Robert', 'Kucharski', 'm', '1966-02-28', '66022814337');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (4, NULL, 'Arlena', 'Len', 'k', '1978-05-15', '78051556580');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (5, 4, 'Druzjan', 'S³abiak', 'm', '1992-09-11', '92091180950');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (6, NULL, 'D¿on', 'Kobra', 'm', '1953-08-21', '53082199159');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (7, 4, 'Klet', 'Zabacki', 'm', '1996-12-11', '96121137932');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (8, 2, 'Cyrenia', 'Abbacka', 'k', '1974-04-21', '74042145885');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (9, NULL, 'Mi³oœæ', 'Roztrocka', 'k', '1974-02-10', '74021039840');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (10, NULL, 'Jurata', 'Komosa', 'k', '1974-07-17', '74071731488');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (11, 3, 'Baldwin', 'Mleczyk', 'm', '1995-06-21', '95062197773');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (12, NULL, 'Celestyn', 'Kozak', 'm', '1977-03-12', '77031236331')
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (13, NULL, '¯yraf', 'Plamkowaty', 'm', '1967-08-09', '67080988136');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (14, 4, 'Ilona', 'Ba³aganiarska', 'k', '1988-02-15', '88021507643');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (15, 5, 'Jelena', 'Nebacka', 'k', '1989-04-17', '89041755106');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (16, 4, 'Kanizjusz', 'Debacki', 'm', '1980-05-18', '80051813015');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (17, 4, 'Radzimir', 'Mi³osierny', 'm', '1984-04-03', '84040363471');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (18, NULL, 'Filip', 'Barwinek', 'm', '1978-12-12', '78121234451');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (19, 3, 'Sabina', 'Fio³ek', 'k', '1993-05-11', '93051145529');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (20, 4, 'Alojzy', 'Przeja¿d¿ka', 'm', '1993-05-11', '93051195678');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (21, 5, 'Przemys³aw', 'Paszczak', 'm', '1993-01-30', '93013012098');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (22, 6, 'Borys', 'Los', 'm', '1989-02-26', '89022660173');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (23, 6, 'Wies³awa', 'Pryszcz', 'k', '1987-07-24', '87072442268');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (24, NULL, 'Abelia', 'Kaktus', 'k', '1976-02-19', '76021920708');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (25, NULL, 'Maja', 'Lebiodka', 'k', '1972-01-11', '72011116287');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (26, 6, 'Pankracy', 'Bajeczny', 'm', '1999-02-13', '99021310351');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (27, 7, 'Wadim', 'Zapominajka', 'm', '1964-01-13', '64011386478');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (28, NULL, 'Marcel', 'Chabacki', 'm', '1973-03-24', '73032414956');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (29, NULL, 'Stefan', 'Powój', 'm', '1968-02-22', '68022269797');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (30, NULL, 'Anizja', 'Rabacka', 'k', '1966-07-15', '66071571726');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (31, 7, 'Jagoda', 'Ró¿añska', 'k', '1972-09-11', '72091149324');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (32, 7, 'Ró¿a', 'Jagodañska', 'k', '1975-01-05', '75010556968');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (33, NULL, 'Leokadia', 'Jasna', 'k', '1972-03-07', '72030750868');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (34, 6, 'Bianor', 'Jabacki', 'm', '1969-10-12', '69101280410');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (35, 7, 'Biryn', 'Habacki', 'm', '1969-11-01', '69110165513');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (36, 3, 'Fiebros³aw', 'Zami³y', 'm', '1997-11-11', '97111139534');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (37, NULL, 'Zygmunt', 'Dobroczyñski', 'm', '1957-04-01', '57040193517');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (38, NULL, 'Arian', 'Kabacki', 'm', '1968-02-04', '68020405197');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (39, NULL, 'Franciszek', 'Gapa', 'm', '1978-01-05', '78010502113');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (40, 5, 'Tomasz', 'Œwi¹tek', 'm', '1994-04-28', '94042848199');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (41, 7, 'Kalistrat', 'Czapka', 'm', '1979-02-01', '79020152217');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (42, 5, 'Paloma', 'Bluszcz', 'k', '1990-04-28', '90042896262');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (43, NULL, 'Piotr', 'Mniszek', 'm', '1985-04-28', '85042825136');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (44, NULL, 'Jan', 'Asparagus', 'm', '1979-12-17', '79121789736');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (45, NULL, 'Ezio', 'Gad', 'm', '1966-07-23', '66072365418');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (46, NULL, 'Irydion', 'Tulipan', 'm', '1983-07-11', '83071183171');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (47, NULL, 'Aneta', 'Krecikowska', 'k', '1959-10-22', '59102299580');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (48, NULL, 'Adra', 'Rekin', 'k', '1966-11-02', '66110214063');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (49, NULL, 'Kalina', 'Zag³odna', 'k', '1992-11-22', '92112258387');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (50, 4, 'Apostazja', 'Ciemna', 'k', '1975-11-12', '75111268841');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (51, 7, 'Gustaw', 'Poznawski', 'm', '1997-09-13', '97091311294');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (52, 7, 'Herweusz', 'Nocny', 'm', '1988-04-17', '88041789515');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (53, 4, 'Gracjan', 'Dzienny', 'm', '1968-09-19', '68091924698');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (54, NULL, 'Nikoletta', 'Ma³a', 'k', '1969-05-11', '69051104828');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (55, NULL, 'Acelin', 'Pestka', 'm', '1989-09-24', '89092464958');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (56, 4, 'Sabastian', '£ysy', 'm', '1999-11-11', '99111124653');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (57, 3, 'Michalina', 'Lilia', 'k', '1987-02-21', '87022100121');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (58, 6, 'Adamnan', 'Wymagaj¹cy', 'm', '1977-09-24', '77092410833');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (59, 3, 'Bu³at', 'Nadziewany', 'm', '1976-01-30', '76013043855');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (60, 7, 'Stefan', 'Balon', 'm', '1956-02-10', '56021081355');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (61, NULL, 'Edda', 'K¹kol', 'k', '1963-05-29', '63052971188');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (62, 4, 'Faina', 'Dyniowska', 'k', '1960-11-07', '60110788900');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (63, NULL, 'Kosma', 'Ostro¿ny', 'm', '1953-10-26', '53102617894');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (64, 5, 'Symplicjusz', 'Fikus', 'm', '1957-03-30', '57033099871');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (65, 6, 'Linda', 'Mak', 'k', '1978-05-15', '78051564949');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (66, NULL, 'Liboriusz', 'Gladiola', 'm', '1977-11-18', '77111815351');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (67, NULL, 'Ksaweryna', 'Miêta', 'k', '1953-05-04', '53050419902');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (68, 5, 'Antonia', 'Gorczyca', 'k', '1961-01-02', '61010240565');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (69, 6, 'Wawrzyniec', 'Rumianek', 'm', '1955-08-07', '55080737713');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (70, 6, 'Abira', 'Bogata', 'k', '1972-02-01', '72020112469');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (71, 3, 'Benicjusz', 'Naparczywy', 'm', '1988-09-19', '88091938914');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (72, 4, 'Kordian', 'Jasnota', 'm', '1979-07-10', '79071058210');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (73, NULL, 'Balladyna', 'Malina', 'k', '1974-01-01', '74010198202');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (74, NULL, 'Boromeusz', 'Chmiel', 'm', '1967-11-22', '67112274851');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (75, 6, 'Ramona', 'Obañska', 'k', '1987-12-21', '87122161604');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (76, NULL, 'Eufrozyna', 'Pokrzywa', 'k', '1966-09-09', '66090997668');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (77, 3, 'Dafroza', 'Trawnik', 'k', '1987-08-09', '87080934722');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (78, 4, 'Borys', 'Pokrzyk', 'm', '1993-07-17', '93071706997');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (79, 6, 'Nina', 'Kosaciec', 'k', '1994-01-11', '94011195565');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (80, 5, 'Felin', 'Dziurawiec', 'm', '1991-01-16', '91011638274');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (81, 7, 'Kalikst', '£ubin', 'm', '1968-09-16', '68091682150');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (82, 3, 'Krystyna', 'Bronk', 'k', '1977-10-15', '77101540544');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (83, 5, 'Scholastyka', 'B³awatek', 'k', '1963-07-18', '63071823662');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (84, NULL, 'Linus', 'Pacha', 'm', '1968-12-18', '68121862635');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (85, 6, 'Marzanna', 'Macierzanka', 'k', '1979-03-03', '79030342684');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (86, 5, 'Ramzes', 'Koniczyna', 'm', '1994-02-07', '94020744556');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (87, NULL, 'Ronald', 'Lubiany', 'm', '1967-09-14', '67091482098');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (88, 4, 'Florian', 'Ma³omyœlny', 'm', '1978-10-27', '78102700474');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (89, 3, 'Nela', 'Ma³omyœlna', 'k', '1979-09-17', '79091794783');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (90, 7, 'Marcis³aw', 'Buja', 'm', '1980-02-12', '80021246937');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (91, 5, 'Natalia', 'Kochanek', 'k', '1990-01-02', '90010210863');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (92, 3, 'Nadia', 'Ebacka', 'k', '1992-01-03', '92010319863');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (93, NULL, 'Ninian', '£opian', 'm', '1980-06-12', '80061229730');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (94, NULL, 'Benedykt', 'Chaper', 'm', '1987-02-10', '87021022277');
INSERT INTO Osoba(Id_adres, Id_stanowisko, Imie, Nazwisko, Plec, Data_urodzenia, Pesel)
VALUES (95, 4, 'Ksawery', 'Melon', 'm', '1985-06-05', '85060541575');

--ZAD5--
ALTER TABLE Stanowisko
ADD Opis TEXT NULL;

--ZAD6--
ALTER TABLE Osoba
ADD Czy_ubezpieczenie BIT

ALTER TABLE Osoba
ADD CONSTRAINT C_Czy_ubeczpieczenie DEFAULT 1 
FOR Czy_ubezpieczenie
--ZAD7--
ALTER TABLE Osoba
DROP CONSTRAINT C_Czy_ubeczpieczenie

ALTER TABLE Osoba
DROP COLUMN Czy_ubezpieczenie

--ZAD8--
DROP TABLE IF EXISTS  Typ
CREATE TABLE Typ (
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nazwa VARCHAR(30)
)

--ZAD9--
ALTER TABLE Adres 
ADD Id_typ INT

ALTER TABLE Adres 
ADD CONSTRAINT C_Id_typ FOREIGN KEY(Id_typ) 
REFERENCES Typ(Id)

--ZAD10--
INSERT INTO Typ(Nazwa) VALUES('Miasto'), ('Wieœ')

--ZAD11--
ALTER TABLE Adres
DROP CONSTRAINT C_Id_typ

ALTER TABLE Adres 
DROP COLUMN Id_typ 

DROP TABLE Typ

--ZAD12--
SELECT Imie, Nazwisko, (CONCAT(SUBSTRING(Pesel, 1,2), 'xxxxxxx', SUBSTRING(Pesel, 10,2))) as 'Pesel' 
FROM Osoba

--ZAD13--
SELECT Pesel FROM Osoba WHERE Imie LIKE 'Stefan'

--ZAD14--
SELECT Nazwa, (CONCAT(Pensja, ' z³')) as 'Pensja'
FROM Stanowisko ORDER BY Pensja DESC

--ZAD15--
SELECT DISTINCT Miejscowosc, Ulica FROM Adres

--ZAD16--
SELECT Imie, Nazwisko, Data_urodzenia FROM Osoba
WHERE Data_urodzenia BETWEEN '1970-01-01' AND '1990-01-01'

--ZAD17--
SELECT Imie, Nazwisko, DATEDIFF(YEAR, Data_urodzenia, GETDATE()) as Wiek FROM Osoba

--ZAD18--
SELECT TOP 5 Imie, Nazwisko, Pesel FROM Osoba
ORDER BY Data_urodzenia ASC

--ZAD19--
SELECT COUNT(*) AS [Liczba osob niezatrudnionych] FROM Osoba 
WHERE Id_stanowisko IS NULL

--ZAD20--
SELECT Imie, Nazwisko FROM Osoba 
WHERE LEN(Nazwisko) = 7 AND Nazwisko LIKE '%ska'

--ZAD21--
SELECT COUNT(*) AS [Kobiety bez a na koñcu] FROM Osoba
WHERE Plec = 'k' AND  Imie NOT LIKE '%a'

--ZAD22--
SELECT Imie, Nazwisko FROM Osoba
JOIN Stanowisko 
ON Osoba.Id_stanowisko = Stanowisko.Id
WHERE Stanowisko.Nazwa IN ('Kierowca', 'Magazynier')

--ZAD23--
SELECT Imie, Nazwisko FROM Osoba
JOIN Stanowisko 
ON Osoba.Id_stanowisko = Stanowisko.Id
JOIN Adres
ON Osoba.Id_adres = Adres.Id
WHERE Stanowisko.Nazwa = 'Pracownik us³ug czystoœciowych'
AND Adres.Miejscowosc IN ('Gdañsk', 'Gdynia', 'Sopot')

--ZAD24--
SELECT Imie, Nazwisko, Pensja as [Pensja brutto], (Pensja / 1.23) AS [Pensja netto]
FROM Osoba JOIN Stanowisko ON
Osoba.Id_stanowisko = Stanowisko.Id

--ZAD25--
SELECT AVG(Pensja) AS [Œrednia pensja osób urodzonych 30. stycznia] FROM Osoba 
JOIN Stanowisko 
ON Osoba.Id_stanowisko = Stanowisko.Id
WHERE Data_urodzenia LIKE '%-01-30'

--ZAD26--
SELECT Imie, Nazwisko, (
	CASE
		WHEN Osoba.Id_stanowisko IS NULL THEN 0
		ELSE Pensja
	END
) AS Pensja FROM Osoba
LEFT JOIN Stanowisko 
ON Osoba.Id_stanowisko = Stanowisko.Id

--ZAD27--
SELECT Imie, Nazwisko FROM Osoba 
JOIN Adres
ON Osoba.Id_adres = Adres.Id
WHERE Adres.Nr_mieszkania IS NOT NULL

--ZAD28--
SELECT AVG(COALESCE(Pensja, 0)) AS [Œrednie zarobki], Miejscowosc FROM Osoba 
JOIN Adres
ON Osoba.Id_adres = Adres.Id
LEFT JOIN Stanowisko 
ON Osoba.Id_stanowisko = Stanowisko.Id
GROUP BY Adres.Miejscowosc

--ZAD29--
SELECT AVG(DATEDIFF(YEAR, Data_urodzenia, GETDATE())) as [Œrednia wieku], Plec FROM Osoba
WHERE DATEDIFF(YEAR, Data_urodzenia, GETDATE()) >= 18 
GROUP BY Plec

--ZAD30--
SELECT COUNT(*) as [Liczba osób], Miejscowosc FROM Osoba
JOIN Adres 
ON Osoba.Id_adres = Adres.Id
WHERE Miejscowosc NOT IN ('Gdañsk', 'Gdynia', 'Sopot')
GROUP BY Miejscowosc

--ZAD31--
SELECT Stanowisko.Nazwa FROM Stanowisko 
JOIN Osoba 
ON Stanowisko.Id = Osoba.Id_stanowisko
WHERE (SELECT COUNT(*) FROM Osoba WHERE Id_stanowisko = Stanowisko.Id) > 6
GROUP BY Nazwa

--ZAD32--
SELECT Miejscowosc FROM Osoba
JOIN Adres 
ON Osoba.Id_adres = Adres.Id
LEFT JOIN Stanowisko 
ON Osoba.Id_stanowisko = Stanowisko.Id
GROUP BY Miejscowosc
HAVING SUM(Pensja) > 15000

--ZAD33--
UPDATE Stanowisko SET Pensja=Pensja+500 WHERE Pensja < 3000

--ZAD34--
UPDATE Stanowisko SET Pensja=Pensja-200 
WHERE (
	SELECT COUNT(*) From Osoba 
	JOIN Adres ON Osoba.Id_adres = Adres.Id 
	WHERE Miejscowosc LIKE 'Elbl¹g' AND Id_stanowisko = Stanowisko.Id
	) > 0

--ZAD35--
DELETE FROM Osoba WHERE Id_stanowisko IS NULL

--ZAD36--
DELETE FROM Osoba WHERE Id_adres IN (SELECT Id FROM Adres WHERE Miejscowosc = 'Koœcierzyna')

--ZAD37--
DROP TABLE IF EXISTS Osoba;
DROP TABLE IF EXISTS Adres;
DROP TABLE IF EXISTS Stanowisko;
DROP TABLE IF EXISTS typ;