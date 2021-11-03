#zadanie4
#1
crate table przetwory(id_przetworu int primary key, rok produkcji date, id_wykonawcy int, foregin key(id_wykonawcy) references postac(id_postaci), zawartosc varchar(50), dodatek varchar(50), id_konsumenta int, foregin key(id_konsumenta) references postac(id_postaci));
alter table przetwory alter dodatek set default "chili";
alter table przetwory alter rok_produkcji set default "1654-11-11";
#2
insert into przetwory(id_przetworu, rok_produkcji, id_wykonawcy, zawartosc, dodatek, id_konsumenta) values ("1","1999-11-11", "3", "bigos,papryczka_chili", "chili","1");
#zadanie5
#1
insert into postac(id_postaci, nazwa, rodzaj, data_ur, wiek) values (4,"Agnar","wiking","1980-11-11","31");
insert into postac(id_postaci, nazwa, rodzaj, data_ur, wiek) values (5,"Urlyk","wiking","1979-11-11","32");
insert into postac(id_postaci, nazwa, rodzaj, data_ur, wiek) values (6,"Asvald","wiking","1978-11-11","33");
insert into postac(id_postaci, nazwa, rodzaj, data_ur, wiek) values (7,"Audun","wiking","1977-11-11","34");
insert into postac(id_postaci, nazwa, rodzaj, data_ur, wiek) values (8,"Bard","wiking","1976-11-11","35");
#2
create table statek(nazwa_statku int primary key auto_increment, rodzaj_statku enum("kontenerowiec","masowiec"), data_wodowania date, max_ladownosc int unsigned);
#3
insert into statek(nazwa_statku, rodzaj_statku, data_wodowania, max_ladownosc) values (2,"masowiec","2020-11-11","800");
insert into statek(nazwa_statku, rodzaj_statku, data_wodowania, max_ladownosc) values (1,"kontenerowiec","2010-11-11","500");;
#4
alter table postac add column funkcja varchar(50) after wiek;
#5
update postac set funkcja="kapitan" where nazwa="Bjorn";
#6
alter table postac add column statek int;
alter table postac add foregin key(statek) references statek(nazwa_statku);
#7
update postac set statek="1" where rodzaj="wiking";
update postac set statek="2" where nazwa="Drozd";
#8 drop table izba;
LAB_04
#zadanie1
#1
a)
delete from postac where id_postaci=8;
delete from postac where id_postaci=7;
b)
set foreign_key_checks = 0;
alter table postac drop foreign key postac_ibfk_1;
alter table postac drop primary key;
alter table postac modify id_postaci int;
#2
alter table postac add pesel char(11);
update potac set pesel=12345678901 + id_postaci;
#3
select nazwa from postac where nazwa LIKE "%a%";
update postac set statek=1 where nazwa like "%a%";