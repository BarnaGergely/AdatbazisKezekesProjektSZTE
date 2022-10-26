# AdatB kötprog how-to:
## Dokumentáció
### Diagram
1. Nyisd meg a példa dokumentációt és egy UML diagram szerkesztőt (draw.io)

2. Józan paraszti ésszel gondold végig mit kell tudnia rendszerednek és ehhez milyen funkciók kellenek. Ezeket írd is bele rögtön a dokumentumba.

3. Milyen táblák és attribútomok fognak kelleni a funkciók megvalósításához? (diák, óra, terem, tanár, etc..). Vidd fel ezeket a diagramba.

5. Ezen a ponton elvileg megvannak a "táblák", hogy miket akarsz tárolni. Eddig még kapcsolatot nem is csináltál! (Kicsit tekinthetőek már tábláknak.)
   - Protipp: A tábla neve ne legyen többesszámban. 

6. Létre hozod a kapcsolatokat a táblák között
   - Itt érdemes funkciókszerint gondolkodni

8. Ha megvannak a kapcsolatok, akkor meg kell vizsgálni a kapcsolódó modellek viszonyát (1:1, 1:N, N:1, N:M).
   - Ehhez célszerű lehet kérdéseket feltenni és megválaszolni.
   - pl: leltárs: user-eszköz kapcsolat: egy user-hez hány eszköz tartozhat? És egy eszközhöz hány user tartozhat?
   - Amit érdemes figyelembe venni még az az "időbeliség", pl.: hotelben foglaló személy-szoba kapcsolat: egy szoba egy foglaló személyhez lehet kiadva adott pillanatban, de a hotel élettartama alatt egy szoba több személyhez lehet kiadva, csak más időpontokba. Így ez már nem 1:1 kapcsolat hanem egyből egy N:1 -es kapcsolat sőt tovább gondolva egy N:M-es kapcsolat (ennek belátása az olvasó feladata).
   - Protipp template: "egy <tábla A> -hez hány <tábla B> tartozhat?" ahol <tábla A> és <tábla B> között kapcsolat van.
   - Extra: 1:1 -es kapcsolat azért kicsit érdekes, ott meg kell nagyon gondolni miért jött elő. Személyes véleményem szerint ez elég ritka.

9. Nézd meg a követelményeket és egészítsd ki fura speciális dolgokkal (specializáló kapcsolat, több értékű attribútum, gyenge egyed)
   - 

10. Nézd át az attribútumok neveit és ha lenne ugyan olan nevű több táblában is, akkor nevezd át őket
   - pl.: felhasználó tábla név attribútmát felhasználónév-re, tanár tábla név attribútumát tanarneve-re.

12) Még egyszer ellenőrzöd hogy csakis valid EK jelöléseket használtál e az ábrán

11. Végezd el a leképezést a diagramból a sablonba

12. Válaszd ki minden táblában a kulcsot és ha van a külső kulcsot
   - lehet egy vagy több attribtum is a kulcs, a lényeg, hogy eggyértelműen meghatározza a rekordot
   - szükség lehet ID bevezetésére, ami lényegében egy egyedi sorszámmal egyértelműen azonosít bármit

13. írd fel a kapcsolatokat?

7. Végezd el a normalizálást 3NF-ig
   - 1:N és N:1 -es kapcsolat esetén azon az oldalon ahol van az "N" ott egy extra mező/oszlop/attribútum lesz a táblában/modellben. Ez az extra mező a külső kulcsod. Nevezd el ennek megfelelően!
      -Protipp template: "<other modelname B>_id".
   -Amennyiben van N:M-es kapcsolatod azt jelenti, hogy a kapcsolatot tényét egy külön táblában kell tárolni majd.
      - Itt felmerülhet olyan, hogy a kapcsolathoz valami infót is jó lenne tárolni.
      - pl: kv szokások: user-kv tipus táblák kapcsolat extra infó: mikor itta a kv-t.
      - Igy kialakulhat egy ilyen kapcsolati tábla: "KVFogyasztás(int user_id, int kv_type, datetime time_of_consumtion)"
      - Protipp template a táblához: "<TableConnection A> (int <table A>_id, int <table B>_id,....)".
   - Ha menet közben rájössz hogy valami hiányzik, módosítsd a diagrammot és végezd újra el ezeket a lépéseket



13) Az ábra alapján felírod a "CREATE TABLE" sql utasítások. Igen, írd fel kézzel, papírra, vagy akárhova. 
    - Protipp: Haladj egyesével az ábrán lévő modelleket. Minden modell esetén ha van az adott model beli egyed ID-t rakd előre a táblában (és célszerűen auto increment legyen, nem akarod kézel számolni). Ezek után jönnek a kapcsolatból jövő külső kulcsok ha vannak.

14) Ekkor rájössz, hogy valami nem okés, vagy valamit még jó lenne tárolni.
    - Így, egészítsd ki a 4 pontban létrejött csoportosításodat és futtasd onnan újra az algoritmust.
    - Egy kis rutinnal nem kell mindig a 4. ponttól újra kezdeni a dolgokat hanem már tudni fogod hova kell közvetlenül "belenyúlni".

15) Remélhetőleg most már megvan minden táblád. Végy egy másik papírt, csinálj annyi táblázatot ahány modelled van.
    Minden modell oszlopai az attribútumokat jelenti, a sorok pedig az abban tárolt egyedeket. Minden sor egy-egy egyed.
    Végezz teszt "beszúrást"/adat feltöltést valamelyik táblából kiindulva az összes táblára.
    pl.: felhasználó felvétele egy User táblába.
    Az adat feltöltés során természetesen előfordul, hogy a kapcsolatot is meg kell csinálni. Nyugodtan nyilazd össze az sorokat, hogy melyik másik sorhoz tartozik/tartoznak. (protipp: színes toll/ceruza/szaggatott, pontozott vonal etc.)
    
16) 2NF/3NF megvolt?

17) A "feltöltött" demó táblák alapján vizsgáljuk meg miket lehetne egy felhasználónak megjeleníteni.
    pl.: Hány személy van jelenleg a hotelben? Van-e olyan szoba amit csak 4x adtunk ki? Melyik a legjobban fogyó kv?
    A legjobban fogyó kv-ból ki volt a legtöbbet fogyasztó fejlesztő? Egy fejlesztőnél kint lévő eszközök átlagosan mekkora teljesítményűek Watt-ban?
    
18) Elkezdhetünk programozni. Vegyünk egy tetszőleges programnyelvet. Csináljuk egy egyszerű fgv-t benne ami kapcsolódik egy adatbázis szerverhez.

19) Megvan a kapcsolódás? Csináljuk egy másik fgv-t ami végre tud hajtani egy "CREATE TABLE"-t célszerűen azokkal az adatokkal miket mi szeretnénk majd tárolni.
    Teszteljük! Ehhez kell valami tool, hogy tudjuk csatlakozni a db-hez. Ennek a toolnak a megkeresése az olvasó feladata az adatbázis szerver függvényében.

20) Csináljunk egy fgv-t ami képes egy táblába elemet beleszúrni.
    Hello "INSERT INTO".
    Ellenőrizzük a bevitt adatot a db tool-al.
    
21) Rakjuk el a kiválasztott db toolt.
    Csináljuk egy fgv-t ami kilistázza a konzolra/fájlba/pirítósra/etc. egy tábla tartalmát (célszerűen azt ahova van insert-ünk).
    Hello "SELECT *".
    Ezzel a fgv-el vizsgáljuk meg, hogy az előbb insert-el beszúrt elem megjelenik-e.
    
22) Csináljuk egy fgv-t ami ID(!) alapján képes egy táblában lévő "sor"-t módosítani (valamelyik attribútumot).
    Hello "UPDATE".
    A meglévő select-et végrehajtó fgv-el teszteljük a működést.
    Protipp: ezen a ponton nem kell még általános fgv-t csinálni, csak egy egyszerűt ami egy attribútumot képes módosítani ID alapján.
    
23) Csináljuk egy fgv-t ami képes ID(!) alapján törölni egy táblában lévő sort.
    Hello "DELETE".
    A meglévő select-et végrehajtó fgv-el teszteljük a működést.
    
24) Megvan a CRUD (Create-Read-Update-Delete) egy adott táblára.
    Csináljuk meg mindegyikre.
    Figyeljünk arra, hogy az N:M-es kapcsolat egy külön táblát alkotnak így ezekhez is CRUD.
    FYI: nem biztos, hogy mind ilyen formában kell majd a végleges alkalmazásban, de rugalmasságot ad, hogy megvan mindenféle művelet.
    Figyelem!: Eddig nem csináltunk semmi objektumot amiben tudjuk tárolni az adatokat, csak SQL-t hajtottunk végre!

26) Minden táblához csináljuk egy-egy struktúrát/class-t ami képes egy sort tárolni (egy táblabeli sort).
    Ez kb azt jelenti, hogy a modell attribútumai/tábla oszlopai lesznek a class memberjei/property-ei.

25) Alakítsuk át a SELECT -es fgv-eket, hogy listákat adjanak vissza.
    A lista ez előbb megadott struct/class-ból létrejövő objektumokat tudjon tárolni.
    Az objektumokat a SELECT utasításból visszakapott adatokkal töltsd fel.
    Minden sor egy új ilyen struct/class példány. 
    
27) Alakítsuk át az INSERT -es fgv-eket, hogy az előbb létrehozott struct/class-ból kapjon egy példányt mint input paraméter.
    Ebből vegyük ki a szükséges membereket és adjuk meg az "INSERT INTO" sql utasításnak mint végrehajtandó parancs.
    FYI: For the love of every holy and godly! NEM, NEM, és NEM szabad string konkatenálással megoldani az "INSERT INTO"-t végrehajtását. Minden nyelven/db-hez van olyan API ami képes behelyettesíteni paramétereket az SQL-be.
    Read the docs/examples. Amennyiben ezt nem teszed meg: hello sql injection.

28) Alakítsuk át az UPDATE -es fgv-t, hogy képes legyen struct/class-ból létrehozott példányt fogadni, és az ebben
    található ID(!) alapján frissíteni végrehajtani az SQL-t.
    Remember "hello sql injection"!
  
29) Alakítsuk át a DELETE -es fgv-t, hogy képes legyen struct/class-ból létrehozott példányt fogadni, és az ebben
    található ID(!) alapján törölni az elemet a táblából.
  
30) Ezen a ponton ha minden jól ment akkor van egy halmaz fgv-ed ami képes listázni/beszúrni/törölni/frissíteni bármely
    táblához. Kicsit kényelmetlen lehet használni a kapcsolatokat jelen esetben, de ettől eltekintve ha megfelelő sorrendben adjuk meg a fgv hívásokat akkor bármilyen adatot fel tudunk tölteni a db-be (vagy csinálni vele valamit).

31) Menjünk bele a komplexebb lekérdezésebe. Emlékezz vissza a 17 pontra mikor papíron teszteltük miket lehet lekérdezni.
    Minden ilyen lekérdezéshez csinálj egy fgv-t. Ebben a fgv-ekeben add meg az SQL-é fordított logikát.
    Nyugodtan lehet lépésenként haladni az SQL-ek összerakásában.
    pl.: Elsőre sima "SELECT" SQL írunk, majd bővítjük feltételekkel, aggregációval éppen mi kell.
    Célszerű lehet simán csak a konzolra/fájlba kiíratni a lekérdezés által visszaadott eredményeket.
    Valamint ismét elő lehet venni a db tool-t hogy gyorsan lehessen tesztelni a lekérdezéseket.
    Protipp: Csináltunk akár egy olyan fgv-t is ami csak egy SQL string-et vár amit végrehajt, kidobja az eredményét valahova és ezzel teszteljük a lekérdezést.
    Protipp #2: Miután megvan a végleges SQL vizsgáld meg mit/mennyi adatot ad vissza. Ha csak egy számot akkor a fgv azzal térjen vissza, ha több sornyi elemet akkor listát (és a listában tárolt adatot lehet be kell csomagolni egy új struct/class típusú példányba)
    
32) Megvan a CRUD, megvan a komplex lekérdezések egy halmaza. Innen már "csak" UI-t kell elé rakni, hogy milyet
    az a választott technológiától függ, webes vagy desktop. Ez fogja a legtöbb időt elvinni.
    A UI összerakás során célszerű elsőre nagyon egyszerű felületet csinálni és inkább minden műveletet kivezetni
    oda, hogy csak pár kattintás legyen tesztelni a dolgokat.
    
33) Fusd végig még egyszer az SQL-es fgv-eket: Ugye nem string műveletekkel raktad össze azokat?
    Ha a "nem" a válasz erre a kérdésre mehetsz tovább. Egyéb esetben lépj vissza és használd az API-t amivel
    tudsz behelyettesíteni értékeket az SQL utasításokba.
    FYI: az adatbázis API-k biztosan adnak olyan fgv-eket amik képesek a behelyettesítést elvégezni.
    
34) öööö Profit? Szépítsd, javítsd teszteld az alkalmazást.


Extra tippek:
#1) Ne akarj egyszerre mindent megcsinálni ha nincs még meg a rutinod benne. Kis lépésekkel, sok teszteléssel haladj.
#2) NE STRING MŰVELETEKKEL RAKD ÖSSZE AZ SQL UTASÍTÁSOKAT!
#3) A UI-ba végtelen időd bele lehet ölni. Ezért elsőre mindig a funkcionalitás legyen meg.
#4) NE STRING MŰVELETEKKEL RAKD ÖSSZE AZ SQL UTASÍTÁSOKAT!
#5) Majdnem minden nyelvhez van DB API. Érdemes rákeresni és példákat megnézni.
#6) Maguk az SQL utasítások amit itt írsz 90%-ban DB-től függetlenül működni fognak (feltehetően :D).
#7) Amennyiben olyan technológiát használsz ami ad fejlettebb DB réteged ad, akkor olvasd el a doksit és legalább egy example-t csinálj meg benne. Ha nincs hozzá doksit akkor ne válaszd elsőre azt.
