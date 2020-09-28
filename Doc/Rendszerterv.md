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



## 12. Karbantartási terv

