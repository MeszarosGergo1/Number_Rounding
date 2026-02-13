# Feladat: Szám kerekítése
```Number_Rounding```

## Feladat leírása

Írj egy Python BDD tesztet, amely egy tizedes számot kerekít egy adott tizedesjegyre!

### Követelmények

1. **Feature fájl létrehozása**: Hozz létre egy `number_rounding.feature` fájlt a `features/` mappában
2. **Scenáriók írása**: Írj legalább 7 scenáriót:
   - Szám kerekítése felfelé (pl. 3.7 → 4) decimals=0 
   - Szám kerekítése lefelé (pl. 3.2 → 3) decimals=0
   - Szám kerekítése egy tizedesjegyre (pl. 3.45 → 3.5) decimals=1
   - Szám kerekítése két tizedesjegyre (pl. 3.456 → 3.46) decimals=2
   - Határon lévő szám (pl. 3.5 → 4) decimals=0
   - Negatív szám lefelé (pl. -3.7 → -4) decimals=0
   - Negatív szám lefelé (pl. -3.2 → -3) decimals=0
3. **Step definitions**: Írd meg a step definition-öket a `features/steps/step_definitions.py` fájlban
4. **Alkalmazás kód**: Implementáld az `src/number_rounding.py` fájlban a `round_number(number, decimals)` függvényt

### Példa scenárió struktúra

```gherkin
Feature: Szám kerekítése
  Mint felhasználó
  Szeretnék kerekíteni egy számot egy adott tizedesjegyre
  Hogy pontosabb számításokat végezhessek

  Scenario: Szám kerekítése felfelé
    Given a szám értéke 3.7
    And a tizedesjegyek száma 0
    When kerekítem a számot
    Then az eredmény 4 kell legyen
```

Természetesen te angol nyelven fogalmazz! 🇬🇧🫖💂🏻‍♂️👑

### Lépések

1. **Első lépés - Feature fájl**: Írd meg a feature fájlt a scenáriókkal
2. **Második lépés - Step definitions**: Írd meg a step definition-öket (először üresen, vagy csak pass-szel)
3. **Harmadik lépés - Futtatás**: Futtasd le a teszteket (`behave`), és nézd meg, hogy milyen step-ek hiányoznak
4. **Negyedik lépés - Implementáció**: Implementáld a hiányzó step-eket és az alkalmazás kódot
5. **Ötödik lépés - Tesztelés**: Futtasd újra a teszteket, és ellenőrizd, hogy minden átmegy

### Tippek

- Ne feledd: először a tesztet írjuk, utána az alkalmazás kódot (TDD/BDD módszer)
- A step definition-ökben használhatod a `context` objektumot az adatok tárolására
- Az alkalmazás kódot a `src/number_rounding.py` fájlba írd
- A kerekítéshez használd a Python beépített `round()` függvényét: `round(number, decimals)`

### Bónusz feladatok

- Adj hozzá scenáriót nagyon nagy számokra is (pl. 1234567.89)
- Adj hozzá scenáriót nagyon kis számokra is (pl. 0.000123)
- Használj Scenario Outline-ot az Examples táblázattal különböző számokkal és tizedesjegyekkel


## Projekt struktúra

A feladatnak így kell kinéznie:

```
Python_Number_Rounding/
├── FELADAT_LEIRAS.md              # Ez a fájl
├── features/
│   ├── number_rounding.feature
│   └── steps/
│       └── step_definitions.py
└── src/
    └── number_rounding.py         # Alkalmazás kód
```

## Futtatás

A tesztek futtatásához a gyökérkönyvtárból futtasd:

```bash
python -m behave
```
