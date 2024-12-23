# mitologia_grecka

Ten projekt zawiera bazę danych MySQL dotycząca mitologii greckiej, zawierającą informacje o:
- Bogach greckich
- Miejscach
- Mitach
- Stworzeniach 



## Zawartość pliku `clean_combined_mitologia_grecka.sql`
Struktura i zawartość bazy danych:
1. Tabela `bogowie` – Zawiera informacje o greckich bogach.  `mitologia_grecka_bogowie.sql`
2. Tabela `miejsce` – Przedstawia miejsca związane z mitologią.  `mitologia_grecka_miejsce.sql`
3. Tabela `mity` – Opisy mitycznych wydarzeń.  `mitologia_grecka_mity.sql`  
4. Tabela `stworzenia` – Dane o mitycznych stworzeniach.  `mitologia_grecka_stworzenia.sql`


## Struktura bazy danych
Tabela Bogowie
Przechowuje informacje o bogach:
id (INT, klucz główny, autoinkrementacja) - ID boga.
imie (VARCHAR) - Imię boga.
domena (VARCHAR) - Obszar władzy (np. morze, wojna).
rodzice (VARCHAR) - Imiona rodziców boga.
cechy (VARCHAR) - Opis cech boga.
atrybuty (VARCHAR) - Atrybuty związane z bogiem (np. trójząb Posejdona).

Tabela Mity
Przechowuje informacje o mitach:
id (INT, klucz główny, autoinkrementacja) - ID mitu.
tytul (VARCHAR) - Tytuł mitu.
glowne_bostwo_1, glowne_bostwo_2, glowne_bostwo_3 (INT, FK) - Główne bóstwa w micie.

Tabela Stworzenia
Przechowuje informacje o stworzeniach:
id (INT, klucz główny, autoinkrementacja) - ID stworzenia.
nazwa (VARCHAR) - Nazwa stworzenia.
opis (TEXT) - Opis stworzenia.
powiazany_mit (INT, FK) - Powiązany mit.

Tabela Miejsce
Przechowuje informacje o miejscach:
id (INT, klucz główny, autoinkrementacja) - ID miejsca.
nazwa (VARCHAR) - Nazwa miejsca.
opis_miejsca (TEXT) - Opis miejsca.

## Zapytania do analizy bazy danych 
-- (Bogowie i ich domeny)
SELECT imie, domena
FROM Bogowie;

-- (mity + Bogowie powiązani z mitem)
SELECT Mity.tytul, Bogowie.imie
FROM Mity
LEFT JOIN Bogowie ON Mity.glowne_bostwo_1 = Bogowie.id;
--
SELECT Mity.tytul, Bogowie.imie
FROM Mity
LEFT JOIN Bogowie ON Mity.glowne_bostwo_1 = Bogowie.id
	OR Mity.glowne_bostwo_2 = Bogowie.id
    OR Mity.glowne_bostwo_3 = Bogowie.id;
--
SELECT 
    Mity.tytul, 
    Bogowie.imie AS imie_bostwa
FROM Mity
LEFT JOIN Bogowie ON Mity.glowne_bostwo_1 = Bogowie.id
   OR Mity.glowne_bostwo_2 = Bogowie.id
   OR Mity.glowne_bostwo_3 = Bogowie.id
WHERE Bogowie.id = 3;

-- (stworzenia i powiązane mity)
SELECT stworzenia.nazwa, mity.tytul
FROM stworzenia
LEFT JOIN mity on stworzenia.powiazany_mit = mity.id;

-- (Bogowie, mity i powiązane stworzenia)
SELECT mity.tytul, bogowie.imie, stworzenia.nazwa
FROM mity
LEFT JOIN bogowie ON Mity.glowne_bostwo_1 = Bogowie.id
   OR Mity.glowne_bostwo_2 = Bogowie.id
   OR Mity.glowne_bostwo_3 = Bogowie.id
LEFT JOIN stworzenia ON mity.id = stworzenia.powiazany_mit;

-- (Bogowie, liczba mitów w których są głównymi postaciami)
SELECT bogowie.imie, COUNT(mity.id)
FROM bogowie
LEFT JOIN mity on bogowie.id = mity.glowne_bostwo_1
	OR bogowie.id = mity.glowne_bostwo_2
    OR bogowie.id = mity.glowne_bostwo_3
GROUP BY bogowie.imie;

-- (Stworzenia pojawiające się w więcej niz jedynm micie)
SELECT stworzenia.nazwa, COUNT(powiazany_mit)
FROM stworzenia
GROUP BY stworzenia.nazwa
HAVING COUNT(powiazany_mit) > 1;  -- BRAK

SELECT stworzenia.nazwa, COUNT(powiazany_mit)
FROM stworzenia
GROUP BY stworzenia.nazwa;

-- (Bogowie nie powiązani z żadnym mitem)
SELECT bogowie.imie
FROM bogowie
LEFT JOIN mity 
ON bogowie.id = mity.glowne_bostwo_1
	OR bogowie.id = mity.glowne_bostwo_2
    OR bogowie.id = mity.glowne_bostwo_3
WHERE mity.id IS NULL;

-- (Mity, Bogowie, powiązane miejsce)
SELECT mity.tytul, bogowie.imie, miejsce.nazwa
FROM mity
LEFT JOIN bogowie ON mity.glowne_bostwo_1 = bogowie.id
	OR mity.glowne_bostwo_2 = bogowie.id
	OR mity.glowne_bostwo_3 = bogowie.id
LEFT JOIN miejsce ON mity.id = miejsce.id;



