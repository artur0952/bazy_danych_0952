#zadanie1
#punkt2
insert into postac values(null,"Bjorn","wiking","1980-11-11",41);
insert into postac values(null,"Drozd","ptak","2018-11-11",3);
insert into postac values(null,"Tesciowa","kobieta","1900-11-11",121);
#punkt3
update postac set wiek=88 where nazwa="Tesciowa";
#zadanie2
#punkt1
create table walizka(id_walizki int auto_increment primary key, pojemnosc int unsigned, kolor enum('rozowy','czerwony','teczowy','zolty'), id_wlasciciela int, foregin key(id_wlasciciela) references postac(id_postaci) on delete cascade;
#punkt2
alter table walizka alter kolor set default "rozowy";
#punkt3
insert into walizka values(default, 100,"zolty",1);
insert into walizka values(default, 200,"teczowy",3);
#zadanie3
#punkt1
create table izba(adres_budynku) varchar(50), nazwa_izby varchar(50), metraz int unsigned, wlasciciel int, foreign key(wlasciciel) references postac(id_postaci), primary key(adres_budynku, nazwa_izby));
#punkt2
alter table izba add column kolor enum('czarny','niebieski') after metraz;
alter table izba alter kolor set default "czarny";
#punkt3
insert into izba(adres_budynku, nazwa_izby, metraz, kolor, wlasciciel) values ("ul.warszawska","spizarnia",20,"czarny",1);
