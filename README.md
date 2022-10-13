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

`A rendszernek képesnek kell lennie arra, hogy adott cég raktárait illetve a raktárak állapotát (telítettség, fizikai pozíció, speciális tulajdonság pl. veszélyes anyag tárolása) nyilvántartsa. Ezenkívül a szállítmányozó cég alkalmazásában álló sofőröket, illetve azok kamionjait is kezelnie kell. A kamionok aktuális és korábbi szállítmányait ki tudjuk listázni. Minden funkció a megfelelő felhasználói jogosultság mellett használható, annak függvényében írható, olvasható vagy nem megtekinthető az adat.`

```
Ide írd le részletesen, hogy mit fog tudni a rendszer (4-6 mondatban), amit a projekt keretében kerül megvalósításra.
Mik a megrendelő és a felhasználók igényei? Miért van szükség a projektre?
```

### Funkciók

- `Felhasználói munkamenet megvalósítása több jogosultsági szinttel (admin, raktáros, sofőr)`
- `Felhasználók kezelése (CRUD)`
- `Raktárak kezelése (CRUD)`
- `Árukészletek kezelése (CRUD)`
- `Járművek kezelése (CRUD)`
- `Fuvarok/szállítmányok kezelése (CRUD)`
- `Email-es kiértesítés új szállítmány esetén az adott raktárosnak és sofőrnek`
- `Fuvar útvonalának megjelenítése térképen a kezdő és a végponttal együtt`
- `Kapcsolatfelvételi űrlap biztosítása új cégek számára`
- `Biztonsági mentés automatikus létrehozása`

```
Ide kerülnek a rendszerrel szemben támasztott funkcionális igények: azaz amit a rendszernek tudnia kell.
```

## Technológia

A projekt a következő technológiákat/szoftvereket fogja használni a munka során:

- Egyszerű CloudLinux alapú Cpanel webtárhely MySQL adatbázissal
- PHP (backend)
- Bootstrap (frontend)
- Maven szoftverprojekt menedzselő szoftver
- VSCode IDE
- Git verziókövető (Github)

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
|      D      |  Projektterv és dokuentáció  | 2022-11-15 |
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

## 9. Feladatlista

A következőkben a tervezett feladatok részletes összefoglalása található.

```
Alapvetően egy feladatnak 1 felelőse lehet, de kivételt képez pl. a 9.1.1. részfeladat.`
```

### 9.1. Projektterv (1. mérföldkő)

Ennek a feladatnak az a célja, hogy `megvalósításhoz szükséges lépéseket, az ütemzést és a felelősöket meghatározzuk.`

Részfeladatai a következők:

#### 9.1.1. Projektterv kitöltése

Felelős: `Mindenki`

Tartam: `4 nap`

Erőforrásigény: `1 személynap/fő`

#### 9.1.2. Bemutató elkészítése

Felelős: `Teszt Elek`

Tartam: `2 nap`

Erőforrásigény: `1 személynap`

```
A mérföldkőhöz tartozó feladatok bemutatása PPT keretében, pl. téma, tervezett funkciók, tagok, Gantt diagram.`
```

### 9.2. UML és adatbázis tervek (2. mérföldkő)

Ennek a feladatnak az a célja, hogy `a rendszerarchitektúrát, az adatbázist és webalkalmazás kinézetét megtervezzük.`

Részfeladatai a következők:

#### 9.2.1. Use Case diagram

Felelős: `Teszt Elek`

Tartam: `4 nap`

Erőforrásigény: `1 személynap`

#### 9.2.2. Class diagram

Felelős: `Lev Elek`

Tartam: `4 nap`

Erőforrásigény: `2 személynap`

#### 9.2.3. Sequence diagram

Felelős: `Remek Elek`

Tartam: `3 nap`

Erőforrásigény: `1 személynap`

#### 9.2.4. Egyed-kapcsolat diagram adatbázishoz

Felelős: `Remek Ele`

Tartam: `4 nap`

Erőforrásigény: `3 személynap`

#### 9.2.5. Package diagram

Felelős: `Teszt Elek`

Tartam: `4 nap`

Erőforrásigény: `1 személynap`

#### 9.2.6. Képernyőtervek

Felelős: `Teszt Elek`

Tartam: `3 nap`

Erőforrásigény: `1 személynap`

#### 9.2.7. Bemutató elkészítése

Felelős: `Lev Elek`

Tartam: `1 nap`

Erőforrásigény: `1 személynap`

```
A mérföldkőhöz tartozó feladatok bemutatása PPT keretében (elkészült diagramok és képernyőtervek)`
```

### 9.3. Prototípus I. (3. mérföldkő)

Ennek a feladatnak az a célja, hogy `egy működő prototípust hozzunk létre, ahol a vállalt funkcionális követelmények nagy része már prezentálható állapotban van.`

Részfeladatai a következők:

#### 9.3.1. `Felhasználói munkamenet üzleti logikája több jogosultsági szinttel (admin, raktáros, sofőr)`

Felelős: `Teszt Elek`

Tartam: `5 nap`

Erőforrásigény: `2 személynap`

#### 9.3.2. `Felhasználói munkamenethez kapcsolódó GUI megvalósítása`

Felelős: `Remek Elek`

Tartam: `4 nap`

Erőforrásigény: `2 személynap`

#### 9.3.3. `Felhasználói munkamenethez szükséges adatok létrehozása az adatbázisban`

Felelős: `Lev Elek`

Tartam: `3 nap`

Erőforrásigény: `1 személynap`

#### 9.3.4. `Felhasználók kezeléséhez tartozó üzleti logika (listázása, módosítása, létrehozása, törlése)`

Felelős: `Teszt Elek `

Tartam: `4 nap`

Erőforrásigény: `2 személynap`

#### 9.3.5. `Felhasználók kezeléséhez kapcsolódó GUI megvalósítása`

Felelős: `Teszt Elek`

Tartam: `3 nap`

Erőforrásigény: `1 személynap`

#### 9.3.6. `Raktárak kezeléshez tartozó üzleti logika (listázása, módosítása, létrehozása, törlése)`

Felelős: `Remek Elek`

Tartam: `4 nap`

Erőforrásigény: `2 személynap`

#### 9.3.7. `Raktárak kezeléshez kapcsolódó GUI megvalósítása`

Felelős: `Remek Elek `

Tartam: `4 nap`

Erőforrásigény: `2 személynap`

#### 9.3.8. `Raktárkezeléshez szükséges adatok létrehozása az adatbázisban`

Felelős: `Lev Elek`

Tartam: `3 nap`

Erőforrásigény: `1 személynap`

#### 9.3.9. `Árukészletek kezeléséhez tartozó üzleti logika (listázása, módosítása, létrehozása, törlése)`

Felelős: `Lev Elek`

Tartam: `5 nap`

Erőforrásigény: `2 személynap`

#### 9.3.10. `Árukészletek kezeléshez kapcsolódó GUI megvalósítása`

Felelős: `Lev Elek`

Tartam: `5 nap`

Erőforrásigény: `2 személynap`

#### 9.3.11. `Árukészletek kezeléséhez szükséges adatok létrehozása az adatbázisban`

Felelős: `Lev Elek`

Tartam: `3 nap`

Erőforrásigény: `1 személynap`

#### 9.3.12. `Járművek kezeléséhez kapcsolódó üzleti logika (listázása, módosítása, létrehozása, törlése)`

Felelős: `Teszt Elek`

Tartam: `4 nap`

Erőforrásigény: `2 személynap`

#### 9.3.13. `Járművek kezeléshez kapcsolódó GUI megvalósítása`

Felelős: `Teszt Elek `

Tartam: `5 nap`

Erőforrásigény: `3 személynap`

#### 9.3.14. `Járművek kezeléséhez szükséges adatok létrehozása az adatbázisban`

Felelős: `Remek Elek `

Tartam: `3 nap`

Erőforrásigény: `1 személynap`

#### 9.3.15. `Fuvarok kezeléséhez tartozó üzleti logika (listázása, módosítása, létrehozása, törlése)`

Felelős: `Remek Elek`

Tartam: `4 nap`

Erőforrásigény: `2 személynap`

#### 9.3.16. `Fuvarok kezeléshez kapcsolódó GUI megvalósítása`

Felelős: `Remek Elek`

Tartam: `5 nap`

Erőforrásigény: `3 személynap`

#### 9.3.17. `Fuvarok kezeléséhez szükséges adatok létrehozása az adatbázisban`

Felelős: `Lev Elek`

Tartam: `3 nap`

Erőforrásigény: `1 személynap`

#### 9.3.18. `Email-es kiértesítés új szállítmány esetén az adott raktárosnak és sofőrnek`

Felelős: `Lev Elek`

Tartam: `5 nap`

Erőforrásigény: `2 személynap`

#### 9.3.19. `Fuvar útvonalának megjelenítése térképen a kezdő és a végponttal együtt`

Felelős: `Lev Elek`

Tartam: `3 nap`

Erőforrásigény: `1 személynap`

#### 9.3.20. `Kapcsolatfelvételi űrlap biztosítása új cégek számára (üzleti logika és GUI)`

Felelős: `Teszt Elek `

Tartam: `4 nap`

Erőforrásigény: `2 személynap`

#### 9.3.21. `Biztonsági mentés automatikus létrehozása`

Felelős: `Teszt Elek `

Tartam: `4 nap`

Erőforrásigény: `2 személynap`

#### 9.3.22. Tesztelési dokumentum (TP, TC)

Felelős: `Mindenki`

Tartam: `3 nap`

Erőforrásigény: `1 személynap/fő`

#### 9.3.23. Bemutató elkészítése

Felelős: `Teszt Elek`

Tartam: `1 nap`

Erőforrásigény: `1 személynap`

```
A feladatokat a 3.2-es pont figyelembevételével érdemes meghatározni és lehető legrészletesebben definiálni a feladatokat és a felelőseit.
A bemutató során a prototípus aktuális állását kell prezentálni.
```

### 9.4. Prototípus II. (4. mérföldkő)

Ennek a feladatnak az a célja, hogy `az előző mérföldkő hiányzó funkcióit pótoljuk, illetve a hibásan működő funkciókat és az esetlegesen felmerülő új funkciókat megvalósítsuk. Továbbá az alkalmazás alapos tesztelése is a mérföldkőben történik.`

Részfeladatai a következők:

#### 9.4.1. Javított minőségű prototípus új funkciókkal

Felelős: `Teszt Elek`

Tartam: `5 nap`

Erőforrásigény: `1 személynap`

#### 9.4.2. Javított minőségű prototípus javított funkciókkal

Felelős: `Lev Elek`

Tartam: `5 nap`

Erőforrásigény: `2 személynap`

#### 9.4.3. Javított minőségű prototípus a korábbi hiányzó funkciókkal

Felelős: `Remek Elek`

Tartam: `5 nap`

Erőforrásigény: `2 személynap`

#### 9.4.4. `Felhasználói munkamenet tesztelése (TP, TC, TR)`

Felelős: `Teszt Elek`

Tartam: `1 nap`

Erőforrásigény: `0.3 személynap`

#### 9.4.5. `Raktárak kezelésének tesztelése (TP, TC, TR)`

Felelős: `Remek Elek`

Tartam: `1 nap`

Erőforrásigény: `0.3 személynap`

#### 9.4.6. `Árukészletek kezelésének tesztelése (TP, TC, TR)`

Felelős: `Teszt Elek`

Tartam: `1 nap`

Erőforrásigény: `0.3 személynap`

#### 9.4.7. `Járművek kezelésének tesztelése (TP, TC, TR)`

Felelős: `Remek Elek`

Tartam: `1 nap`

Erőforrásigény: `0.3 személynap`

#### 9.4.8. `Fuvarok kezelésének tesztelése (TP, TC, TR)`

Felelős: `Teszt Elek`

Tartam: `1 nap`

Erőforrásigény: `0.3 személynap`

#### 9.4.9. `Email-es funkciók tesztelése (TP, TC, TR)`

Felelős: `Remek Elek`

Tartam: `1 nap`

Erőforrásigény: `0.3 személynap`

#### 9.4.10. `Térképes funkciók tesztelése (TP, TC, TR)`

Felelős: `Lev Elek`

Tartam: `1 nap`

Erőforrásigény: `0.3 személynap`

#### 9.4.11. `Kapcsolatfelvételi űrlap tesztelése (TP, TC, TR)`

Felelős: `Lev Elek`

Tartam: `1 nap`

Erőforrásigény: `0.3 személynap`

#### 9.4.12. `Biztonsági mentés tesztelése (TP, TC, TR)`

Felelős: `Lev Elek`

Tartam: `1 nap`

Erőforrásigény: `0.3 személynap`

#### 9.4.13. Bemutató elkészítése

Felelős: `Teszt Elek`

Tartam: `1 nap`

Erőforrásigény: `1 személynap`

```
Működő végleges program, a frissített tesztelési dokumentációval. A 3. mérföldkőhöz képest funkiconálisan többet kell tudnia az oldalnak.

```

## 10. Részletes időbeosztás

![image](./MINTA-gantt-diagram.png)

```
Ide kell berakni a Gantt diagramot, amely a 9. fejezetben található részfeladatokat tartalmazza felelős/tartam bontásban.
```

## 11. Projekt költségvetés

```
Az egyes leadások alkalmával rögzített erőforrásigényt, az elvállalt feladatok számát
és az adott mérföldkőben végzett munkáért szerezhető pontszámot kell beírni minden emberre külön-külön.
```

### 11.1. Részletes erőforrásigény (személynap)

|     Név      | 1. leadás - Projektterv | 2. leadás - UML és adatbázis | 3. leadás - Prototípus I. | 4. leadás - Prototípus II. | Összesen |
| :----------: | :---------------------: | :--------------------------: | :-----------------------: | :------------------------: | :------: |
| `Teszt Elek` |           `2`           |             `3`              |           `16`            |            `4`             |   `25`   |
| `Remek Elek` |           `1`           |             `4`              |           `13`            |            `4`             |   `22`   |
|  `Lev Elek`  |           `1`           |             `3`              |           `12`            |            `4`             |   `20`   |

### 11.2. Részletes feladatszámok

|     Név      | 1. leadás - Projektterv | 2. leadás - UML és adatbázis | 3. leadás - Prototípus I. | 4. leadás - Prototípus II. | Összesen |
| :----------: | :---------------------: | :--------------------------: | :-----------------------: | :------------------------: | :------: |
| `Teszt Elek` |           `2`           |             `3`              |            `9`            |            `6`             |   `20`   |
| `Remek Elek` |           `1`           |             `2`              |            `7`            |            `5`             |   `15`   |
|  `Lev Elek`  |           `1`           |             `2`              |            `8`            |            `5`             |   `16`   |

### 11.3. Részletes költségvetés

|                  Név                   | 1. leadás - Projektterv | 2. leadás - UML és adatbázis | 3. leadás - Prototípus I. | 4. leadás - Prototípus II. | Összesen  |
| :------------------------------------: | :---------------------: | :--------------------------: | :-----------------------: | :------------------------: | :-------: |
| Maximálisan választható pontszám %-ban |         10% (7)         |           30% (21)           |         50% (35)          |          30% (21)          | 100% (70) |
|              `Teszt Elek`              |           `7`           |             `13`             |           `35`            |            `15`            |   `70`    |
|              `Remek Elek`              |           `4`           |             `21`             |           `30`            |            `15`            |   `70`    |
|               `Lev Elek`               |           `4`           |             `21`             |           `30`            |            `15`            |   `70`    |

Szeged, `2021-10-25`.
