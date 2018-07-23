create database Zadatak; -- napravili smo bazu Zadatak
use Zadatak; --koristimo bazu Zadatak u daljnjem radu

create table Grad(                                       --definiramo tablicu Grad
		ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,       --koja æe imati padajuæi izbornik (automatski raste)
		Naziv varchar(100)                               --te moguænost izbora gradova
)


create table Tvrtka (                                    --definiramo tablicu Tvrtka
	Sifra INT NOT NULL IDENTITY(1,1) PRIMARY KEY,        -- koja ima primarni kljuè koji automatski raste
	Naziv varchar(100),                                  -- naziv je tipa varchar do 100 znakova
	UlicaIBroj varchar(100),                             -- ulica i broj je takoðer tipa varchar do 100 znakova
	PostanskiBroj int,                                   -- poštanski broj je tipa int, zbog raspona
	GradID int not null FOREIGN KEY REFERENCES Grad(ID)  -- vanjski kljuè vežemo na ID iz tablice Grad, taj isti ID koristimo u ovoj tablici
)


insert into GRAD values ('Zagreb')  -- u tablicu Grad unosimo vrijednosti padajuæeg izbornika
insert into GRAD values ('Osijek')  -- svaki Grad æe dobiti pripadajuæ ID
insert into GRAD values ('Èakovec')
insert into GRAD values ('Rijeka')
insert into GRAD values ('Varaždin')
insert into GRAD values ('Split')
insert into GRAD values ('Trogir')
insert into GRAD values ('Dubrovnik')
insert into GRAD values ('Pula')
insert into GRAD values ('Rovinj')
insert into GRAD values ('Slavonski Brod')
insert into GRAD values ('Virovitica')

insert into Tvrtka (Naziv,UlicaIBroj,PostanskiBroj,GradID) values ('AUTOMEHANIKA SERVISI d.d.', 'Lopašiæeva 12 ', 10000, 1)
insert into Tvrtka (Naziv,UlicaIBroj,PostanskiBroj,GradID) values ('KONÈAR-GIM d.d. ', 'Fallerovo šetalište 22 ', 10000, 1)
insert into Tvrtka (Naziv,UlicaIBroj,PostanskiBroj,GradID) values ('TOMINA RJEŠENJA j.d.o.o. ', '2. jelašiæki odvojak 2', 10000, 1)
insert into Tvrtka (Naziv,UlicaIBroj,PostanskiBroj,GradID) values ('E-Light Automation j.d.o.o', 'Varaždinska ulica, odvojak III 6', 42000, 5)
insert into Tvrtka (Naziv,UlicaIBroj,PostanskiBroj,GradID) values ('UVODA d.o.o.', 'Vjekoslava Paraæa 44', 21000, 6)

-- U tablicu Tvrtka unosimo nove tvrtke, potreban je unos Naziv, UlicaIBroj,PostanskiBroj,GradID - Sifru ne unosimo
-- zato što ona automatski raste prilikom svakog novog unosa

SELECT * FROM Tvrtka; --ispis svih upisanih tvrtki iz tablice Tvrtka
select * from Grad;   -- ispis svih upisanih gradova iz tablice Grad