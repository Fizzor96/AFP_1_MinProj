## 1. Áttekintés

A rendszer egy online könyvklubot és elektronikus könyvtárat valósít meg ahol a felhasználók véleményt fejthetnek ki a könyvekről, értékelhetik azokat valamint könyebben elérik az elektronikus könyveket megspórolva több percnyi böngészést.
Ezen kívül a felhasználóknak lehetőségük van az írók élettörténetének megismerésére is. A rendszer teljesmértékben online formában kell megvalósítani egy weblap keretében. A weblap kínálta lehetőség teljes mértékű kihasználásához szükséges lesz regisztrálni. Regisztráció nélkül csak egy betekintő fog megjelenni.

## 2. Jelenlegi helyzet

Az idő múlásával az emberek egyre kevesebbet, vagy egyáltalán nem is olvasnak könyveket. Egyszerűen kimegy a "divatból" a könyvolvasás, mondhatni nem fordítanak már rá időt, hiszen sok más kikapcsolódási lehetőség adódik a világban.
Azonban nem mindenkire igaz ez, hiszen továbbra is vannak olyan emberek akiknek szenvedélyük az olvasás. Ezen személyeket szeretnénk a projektünkkel kisegíteni. Nem szabad engedünk, hogy a könyvolvasás az idő süllyesztőjében vesszen el.
Muszáj támogatnunk azokat, akiknek továbbra is szenvedélye az olvasás, hogy fentartsuk az emberekben a könyvek szeretetét és hogy meghozzuk mások számára is a kedvet az olvasáshoz. 
Manapság már az emberek nem vásárolják meg a könyveket hanem online olvassák ezeket, ez nem is meglepő hiszen a 21. században vagyunk és ez jóval kényelmesebb valamint nem utolsó szempont, hogy költségmentes is. Az interneten rengeteg könyvet találunk meg pdf formátumban, de ezek megtalálása időígényes és összegyüjtése problémás lehet. 
Ezen szeretnénk egyszerűsíteni úgy, hogy a felhasználóknak összegyűjtjük a könyvekhez vezető forrásokat, valamint biztosítunk egy online teret, ahol kommunikálhatnak egymással az emberek. 

## 3. Vágyálom rendszer 

A projekt célja egy olyan felület biztosítása, ahol sokkal könnyebb elérni az online könyveket, valamint egy online "könyvklub" szerű weblap létrehozása. A projekt csak webes felülettel rendelkezzen. Regisztráció nélkül csak egy betekintő érhető el a látogató számára annak érdekében, hogy bemutassuk, milyen opciókkal rendelkezhet regisztráció után.
Miután létrehozta fiókját a felhasználó és bejelentkezett utána elérhetővé válnak a különböző opciók. Képes a könyvek között keresni, olvasni tudja azokat, értékelni és kommentelni is tud az adott könyvről. Hozzáfér az írók listájához is és megtekintheti azok élettörténetét.
A könyvek értékeléséhez szükséges egy olyan funkció kialakítása, ami pontozási lehetőséget kínál, tegyül fel egy 1-től 5-ig tartó skálán. A weblap maga egy letisztult oldal, könnyen kezelhető, mindenki számára egyértelmű működéssel bírjon. A könyveknek rendelkezni kell egy bizonyos színtű leírással vagy esetleg ajánlásokkal.
Szükség van egy magasabb szintű felhasználóra is, aki rendelkezik jogusoltságokkal a fiókok módosításához, a könyvek feltöltéséhez, törléséhez, módosításához, írók hozzáadásához és módosításához.

## 4. Funkcionális követelmények

1. Bejelentkezési felület:
 * A felhasználók ezen a felületen jelentkeznek be a weboldalra a bővebb elérés érdekében
 * Jelszó emlékeztetőt is lehet kérni, ha elfelejtették volna a felhasználók azt
2. Regisztrációs felület:
 * A felhasználók itt tudnak beregisztrálni a weboldalra
3. Profil menüpont:
 * A felhasználók itt látják a saját adataikat, esetleg itt módosíthatják a jelszavukat is
4. Könyvek menüpont:
 * Itt lehet elérni a weboldalon elérhető, olvasható könyveket
 * Az értékelés, a vélemény kifejtés is itt valósul meg
5. Írók menüpont:
 * Itt találhatóak az egyes írok élettörténeti forrásához vezető linkek
6. Jogosultságok:
 * Admin: teljes hozzáférése van a weboldalhoz, szerkesztheti a könyveket, az írókat és a felhasználók adatait is
 * Felhasználó: tudja olvasni a könyveket, megtekintheti az írok élettörténetét, tud értékelni és kommentelhet is
 * Vendég: csak egy betekintő áll rendelkezésre amikor megnyitja a weblapot

## 5. Rendszerre vonatkozó törvények, szabványok, ajánlások

Opensource szoftver. Bárki által letölthető és felhasználható. Az értékesítése nem megengedett!

## 6. Jelenlegi üzleti folyamatok modellje

Manapság az embereknek el kell menniük egy könyvtárba, kikölcsönözni egy könyvet, vagy egy könyves boltba megvásárolni azt, ha olvasni szeretne. Ilyenkor előfordulhat, hogy túl elfoglaltak ehhez, esetleg az olvasni kívánt könyv nincs a könyvtárban/könyves boltban, vagy nincs nyitva az adott létesítmény. Az oldal ezekre ad megoldást, könnyen, egész nap elérhető otthonról is. Széles könyvválasztékkal, letölthető könyvekkel. Emellett a felhasználó a szerzőkről is olvashat.

## 7. Igényelt üzleti folyamatok modellje
    
    7.1 Bejelentkezés
        7.1.1 Könyvek menüpont -> Könyv kiválasztása -> Linkek megnyitása
        7.1.2 Szerzők menüpont -> Szerző kiválasztása -> Szerző életének megnyitása
        Admin joggal rendelkezőknek:
        7.1.3 Szerzők hozzáadása/törlése
        7.1.4 Könyvek hozzáadása/törlése
        7.1.5 Szerzők szerkesztése
        7.1.6 Könyvek szerkesztése
        7.1.7 Felhasználók szerkesztése
        7.1.8 Felhasználók listázása
        7.1.9 Felhasználók törlése
        7.1.10 Kijelentkezés
    7.2 Regisztráció

## 8. Követelménylista

Modul | ID | Név | Kifejtés
--- | --- | --- | ----------------------------------------------------------------------
Jogosultság | K1 | Bejelentkezési felület | A felhasználó a felhasználónevével és jelszava segítségével jelentkezhet be. Nem megfelelő felhasználónév vagy jelszó esetén, a felhasználó hibaüzenetet kap.
Jogosultság | K2 | Regisztrációs felület | A felhasználó felhasználónév, e-mail cím és jelszó megadásával regisztrálhatja magát. A jelszó tárolása kódolt formában történik az adatbázisban. Bármely adat hiánya vagy a követelményeknek való nem megfelelése esetén, a felhasználó hibaüzenetet kap.
Jogosultság | K3 | Jogosultsági szintek | -Admin: Felhasználók listája, könyvek listája/lista módosítása, írók/szerzők listája/lista módosítása <br> -Felhasználó: Könyvek listája/olvasása, írók/szerzők listája/háttér történet olvasása
Felület | K4 | Felhasználók listája | Admin jogosultsággal megtekinthető a felhasználók felhasználóneve, e-mail címe és jogosultsági szintje.
Felület | K5 | Könyvek listája | Admin jogosultsággal megtekinthető és módosítható a könyvek címe és műfaja.
Felület | K6 | Könyvek | Minden jogosultsági szint hozzáférhet, a könyvek címét, műfaját és egy „Olvasni szeretném!” opciót tartalmaz.
Felület | K7 | Könyvek olvasása | A Könyvek menüben minden könyv címe, műfaja mellett elérhető egy „Olvasni szeretném!” opció, amely átviszi a felhasználót egy másik oldalra, ahol letöltheti a könyvet több, tetszőleges formátumban. Minden jogosultsági szinten elérhető.
Felület | K8 | Írók/szerzők | Minden jogosultsági szinten elérhető az írók/szerzők listája, ahol teljes néven, származáson kívül egy „Háttér történet” opció is elérhető, amelyen az adott szerzőről olvashat a felhasználó. Admin jogosultsággal módosítható az írók/szerzők listája.

## 9. Fogalomtár

- **UML** - Unified Modeling Language
- **Reszponzív felület** - Mobilon, Tableten, PC-n igazodik a
képernyőhöz a felület mérete, azaz több eszközön is probléma nélkül
üzemelhet
- **Releváns** - fontos, lényeges, meghatározó, jelentős
- **Corrective Maintenance:** A felhasználók által felfedezett és "user reportban"
elküldött hibák kijavítása.
- **Adaptive Maintenance:** A program naprakészen tartása és finomhangolása.
- **Perfective Maintenance:** A szoftver hosszútávú használata érdekében végzett
módosítások, új funkciók, a szoftver teljesítményének és működési
megbízhatóságának javítása.
- **Preventive Maintenance:** Olyan problémák elhárítása, amelyek még nem
tűnnek fontosnak, de később komoly problémákat okozhatnak.