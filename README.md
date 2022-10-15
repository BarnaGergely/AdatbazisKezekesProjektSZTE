# Szálloda projekt dokumentáció 2022

## Összefoglaló

Ebben a projektben egy hotel nyilvántartási webes alkalmazást fogok PHP, MySQL és Bootstrap alapokra felépíteni.

```
Ide írd le tömören (4-6 mondatban), hogy miről szól a projekt, amit a gyakorlatvezetőtől kaptatok.
Írd le, hogy mik a fő célok, miért van a weboldalra szükség.
A dokumentumban a pirossal illetve a blokkokkal kiemelt szövegeknek két jelentése van:
(a) minta/sablon szöveg, amit le kell cserélni, pl. gyakorlatvezető neve;
(b) segítő/magyarázó szöveg.
Az átadott dokumentumban nem szerepelhetnek se pirossal kiemelt, se blokkban szereplő részek! A
feketével írt részek törlése tilos, azok közösek.
```

### Rendszerspecifikáció

A rendszernek képesnek kell lennie arra, hogy adott cég alkalmazottai, vendégeik és szobáik nyilvántartását végezhessék benne.

```
Ide írd le részletesen, hogy mit fog tudni a rendszer (4-6 mondatban), amit a projekt keretében kerül megvalósításra.
Mik a megrendelő és a felhasználók igényei? Miért van szükség a projektre?
```

### Funkciók

- Szobák nyilvántartása
  - Szoba száma
  - Lakó
  - Ár
- Vendégek nyilvántartása
  - tárolt adatok:
    - Státusz (beköltözött, nem jelent meg, kijeleztkezett)
    - Lefoglalt szoba
    - Foglalás kezdete
    - Foglalás vége
    - sz.ig szám
    - Keresztnév
    - Vezetéknév
- Dolgozók nyilvántartása
  - Fizetés
  - Beosztás
  - Munka idő
- Takarítások nyilvántartása
  - Mikor takarít
  - Mit takarít
  - Ki takarít

```
Ide kerülnek a rendszerrel szemben támasztott funkcionális igények: azaz amit a rendszernek tudnia kell.
```

### Egyed-kapcsolat diagram

### Egyed-kapcsolat leírása

### Egyed-kapcsolat diagram leképezése relációs adatbázissémákká

## Technológia

A projekt a következő technológiákat/szoftvereket fogja használni a munka során:

- Egyszerű CloudLinux alapú Cpanel webtárhely MySQL adatbázissal
- PHP (backend)
- Bootstrap (frontend)
- Github szoftverprojekt menedzselő szolgáltatás
- VSCode IDE
- Git verziókövető (Github)

### webalkalmazás futtatása

Ide írom le hogy kell elindítani.

## A munka tartalma

### Követelmények

- min. 4 tábla
- MYSQL adatbázis kezelő rendszer
- min. 50 demó rekord összesen
  - Minden táblában legyen rekord
- CRUD
- legalább 3 összetett lekérdezés

#### A programhoz tervezési dokumentációt is csatolni kell, amely az alábbiakat tartalmazza:
- A feladat megnevezése
- A feladat specifikációja, leírása
- Egyed-kapcsolat diagram és az egyed-kapcsolat diagram értelmezésének leírása
- Egyed-kapcsolat diagram leképezése relációs adatbázissémákká
- Relációsémák normalizálása 3NF-ig. (Amennyiben egy-egy séma esetén indokolt, a normalizálást elegendő csupán 2NF-ig megcsinálni).
- Táblatervek (a relációsémák alapján)
- Az összetett lekérdezések, amelyek az alkalmazásban is meg vannak valósítva.
- Megvalósítás (fejlesztő eszközök, nemtriviális megoldások).
- Az elkészült alkalmazás funkciói (legalább felsorolás szintjén)


### Átadandók és határidők

A főbb átadandók és határidők a projekt időtartama alatt a következők:

| Szállítandó |             Neve             | Határideje |
| :---------: | :--------------------------: | :--------: |
|      D      |  Projektterv és dokuentáció  | 2022-10-15 |
|     P+D     | Kész program és dokumentáció | 2022-11-27 |

D - dokumentáció, P - prototípus

### Verziók

| Verzió | Dátum        | Státusz  | Megjegyzés     |
| ------ | ------------ | -------- | -------------- |
| 0.1    | `2021-09-26` | Tervezet | Legelső verzió |

Státusz osztályozás:

- Tervezet: befejezetlen dokumentum, a mérföldkő leadása előtti napokban
- Előterjesztés: a projekt menedzser bírálatával, a mérföldkő határidejekor
- Elfogadott: a megrendelő által elfogadva, a prezentáció bemutatásakor

```
A leadott projekttervet véglegesnek kell tekinteni.
Mindazonáltal indokolt esetben ettől el lehet térni, amennyiben a gyakorlatvezető engedélyezi.
A fő változtatásokat itt kell vezetni a projekt teljes ideje alatt (jelenlegi példánkban most lett vége a 2. mérföldkőnek).
Általánosságban elmondható, hogy az első 2 mérföldkő során gyakoribb a változtatás, így legalább
3 fő verziót érdemes megjelölni (Tervezet-Előterjesztés-Elfogadott).
A verzió számozásának következetesnek kell lennie. A szerzőknél azoknak a nevét kell felsorolni, akik hozzájárultak a fő verzióhoz,
azaz nem feltétlen mindenki, aki módosította a dokumentumot pl. egy elírás javításával.
```

Szeged, 2022-10-15.
