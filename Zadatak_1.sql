create database Zadatak; -- napravili smo bazu Zadatak
use Zadatak; --koristimo bazu Zadatak u daljnjem radu

create table Grad(                                       --definiramo tablicu Grad
		ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,       --koja �e imati padaju�i izbornik (automatski raste)
		Naziv varchar(100)                               --te mogu�nost izbora gradova
)


create table Tvrtka (                                    --definiramo tablicu Tvrtka
	Sifra INT NOT NULL IDENTITY(1,1) PRIMARY KEY,        -- koja ima primarni klju� koji automatski raste
	Naziv varchar(100),                                  -- naziv je tipa varchar do 100 znakova
	UlicaIBroj varchar(100),                             -- ulica i broj je tako�er tipa varchar do 100 znakova
	PostanskiBroj int,                                   -- po�tanski broj je tipa int, zbog raspona
	GradID int not null FOREIGN KEY REFERENCES Grad(ID)  -- vanjski klju� ve�emo na ID iz tablice Grad, taj isti ID koristimo u ovoj tablici
)


insert into GRAD values ('Zagreb')  -- u tablicu Grad unosimo vrijednosti padaju�eg izbornika
insert into GRAD values ('Osijek')  -- svaki Grad �e dobiti pripadaju� ID
insert into GRAD values ('�akovec')
insert into GRAD values ('Rijeka')
insert into GRAD values ('Vara�din')
insert into GRAD values ('Split')
insert into GRAD values ('Trogir')
insert into GRAD values ('Dubrovnik')
insert into GRAD values ('Pula')
insert into GRAD values ('Rovinj')
insert into GRAD values ('Slavonski Brod')
insert into GRAD values ('Virovitica')

insert into Tvrtka (Naziv,UlicaIBroj,PostanskiBroj,GradID) values ('AUTOMEHANIKA SERVISI d.d.', 'Lopa�i�eva 12 ', 10000, 1)
insert into Tvrtka (Naziv,UlicaIBroj,PostanskiBroj,GradID) values ('KON�AR-GIM d.d. ', 'Fallerovo �etali�te 22 ', 10000, 1)
insert into Tvrtka (Naziv,UlicaIBroj,PostanskiBroj,GradID) values ('TOMINA RJE�ENJA j.d.o.o. ', '2. jela�i�ki odvojak 2', 10000, 1)
insert into Tvrtka (Naziv,UlicaIBroj,PostanskiBroj,GradID) values ('E-Light Automation j.d.o.o', 'Vara�dinska ulica, odvojak III 6', 42000, 5)
insert into Tvrtka (Naziv,UlicaIBroj,PostanskiBroj,GradID) values ('UVODA d.o.o.', 'Vjekoslava Para�a 44', 21000, 6)

-- U tablicu Tvrtka unosimo nove tvrtke, potreban je unos Naziv, UlicaIBroj,PostanskiBroj,GradID - Sifru ne unosimo
-- zato �to ona automatski raste prilikom svakog novog unosa

SELECT * FROM Tvrtka; --ispis svih upisanih tvrtki iz tablice Tvrtka
select * from Grad;   -- ispis svih upisanih gradova iz tablice Grad