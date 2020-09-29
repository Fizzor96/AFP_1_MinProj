## 7. Adatbázis terv
**Táblák**
- **felhasznalok:** Minden felhasználó, aki az oldalon regisztrált
  - **id:** Azonosító szám, mindenképp felvesz egy eglsz típusú értéket, amit a rendszer automatikusan generál és egyesével növekszik, nem lehet két azonos szám
  - **felhasznalonev:** A felhasználók bejelntkezési/felhasználói neve, nem lehet üres
  - **jelszo:** Nem lehet üres a mező
  - **email:** Egyedi, tehát nem lehet két felhasználónak ugyanazon email címe és egyben nem lehet üres mező
  - **jog:** Egész érték, nem lehet üres mező
- **konyvek:**
  - **id:** Minden könyv egyedi azanosítóval bír, automatikusan növekszik és nem lehet üres mező
  - **cim:** A könyv címe, nem lehet üres mező
  - **mufaj:** Az adott könyv műfaja, nem lehet üres mező
  - **link:** Link az adott könyvhöz, nem lehet üres mező
- **writers:**
  - **id:** Az adott író azonosítója, nem lehet üres és automatikusan növekszik
  - **vnev:** Az író vezetékneve, nem lehet üres mező
  - **knev:** Az író keresztneve, nem lehet üres mező
  - **szarmazas:** Az író származási helye, nem lehet üres mező
  - **link:** Nem lehet üres mező


**DSL**
```
Table "felhasznalok" {
  "id" int(11) [pk, not null, increment]
  "felhasznalonev" varchar(65) [not null]
  "jelszo" varchar(65) [not null]
  "email" varchar(65) [not null]
  "jog" int(11) [not null]

Indexes {
  email [unique, name: "email"]
}
}

Table "konyvek" {
  "id" int(11) [pk, not null, increment]
  "cim" varchar(255) [not null]
  "mufaj" varchar(65) [not null]
  "link" varchar(250) [not null]
}

Table "writers" {
  "id" int(11) [pk, not null, increment]
  "vnev" varchar(250) [not null]
  "knev" varchar(250) [not null]
  "szarmazas" varchar(250) [not null]
  "link" varchar(250) [not null]
}

```

**UML**

![database](../Doc/Képek/dbmodell.png)


## 11. Telepítési terv

A szoftver webes felületéhez csak egy böngésző telepítése szükséges.
* Windows - Google Chrome
* Linux - Mozilla
* Mac - Safari
A webszerverre közvetlenül az internetről kapcsolódnak rá a kliensek.
A böngésző címsorába csak az oldal címét kell beírni: xyz.com

## 12. Karbantartási terv

Az alkalmazás folyamatos üzemeltetése és karbantartása, mely
magában foglalja a programhibák elhárítását, a belső igények változása miatti
módosításokat, valamint a környezeti feltételek változása miatt
megfogalmazott program-, illetve állomány módosítási igényeket. Ellenőrizni kell, hogy egy adott böngészővel kompatibilis-e a webes felület. Idő elteltével újabb kategóriákkal, funkciókkal és tartalommal kell bővíteni az oldalt a felhasználói igények szerint.

* Corrective Maintenance: A felhasználók által felfedezett és "user reportban"
elküldött hibák kijavítása.
* Adaptive Maintenance: A program naprakészen tartása és finomhangolása.
* Perfective Maintenance: A szoftver hosszútávú használata érdekében végzett
módosítások, új funkciók, a szoftver teljesítményének és működési
megbízhatóságának javítása.
* Preventive Maintenance: Olyan problémák elhárítása, amelyek még nem
tűnnek fontosnak, de később komoly problémákat okozhatnak.