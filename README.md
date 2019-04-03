# SL-nastavak3
Zavrsni rad .net Onlie-Salon
SQL baza se sastoji iz cetiri table: Radnik,Tretman,Klijent I Zakazivanje.
Tabela Radnik (RadnikId username(nvarchar),Ime(nvarchar),Prezime(nvarchar))
Tabela Tretman (TretmanId(int primary key),Naziv tretmana(nvarchar))
Tabela Klijent (KlijentId(int primary key),ime(nvarchar), prezime(nvarchar), username(nvarchar),password(nvarchar),email username(nvarchar),
tip korisnika username(nvarchar)
Tabela Zakazivanje(ZakazivanjeId(int primary key), username(nvarchar), RadnikId(int), KlijentId(int), dtstart(timedate),dtend(timedate),TretmanId(int)
U Tabeli Zakazivanje se nalaze primary key ostalih tabela.

Projekat je radjen u ASP web core sekciji Visual Studio.
Sastoji se od Master page stranice,Index,O nama,Registracija,Logovanje,Usluge I Zakazivanje.
Sve stranice su uradjene sa ekstenizojm aspx iako je za registraciju I logovanje iskoriscen HTML .
MasterPage se satoji od Navbara I Futera I uradjena je uz pomoc css klasa.
Index stranica uz pomoc Bootstrap biblioteka dodat je slideshot.
U okviru stranice o Nama nalazi se link za Registraciju do koga se dolazi pritiskom na Button Registrujte se.
Refistracija – Uradjena u HTML formi uz pozivanje Bootstrap biblioteka I sastoji se od sest labela I text box I jednog buuton.
Podaci se upisuju u Tabelu Klijent I direktno Klijent odlazi na stranicu LogIn ge su takodje kroz web form koriscena dva labela I dva text box-a.
Posle uspesnog logovanja Klijent odlazi na stranicu Zakazivanje.
Zakazivanje stranica uradjena u web formu sadtoji se od Tabele koja ima pet kolona u okviru njih se nalaze (Kalendar,tri Dropdown liste,Radio Button,dve Label-a I dva Buttona)
Aplikacija je zamisljena da se rezervise odredjena usluga koju Klijent izabere biranjem datuma (Kalendar), vremena(Dropdown list), Radnik(RadioButton) I Usluge(Dropdown list).
Prvi buuton sluzi po odabiru datuma,vremena da se izabere Radnik u slucaju da je za birani datum I vreme Radnik predhodno izabran I kroz proveru u bazi I tabela Zakazivanje ne pokazuje izabranog Radnika. Klijent moze da salektuje druge ponudjene Radnike I da izabere uslugu kroz Dropdown list koji komunicira preko TretrmanId,a pokazuje Naziv tretmana.
Drugi Button sluzi da bi se konacno upisalo u tabelu Zakazivanje sve sto je Klijent izabrao,a kao obavestenje u Label ispise sta  je Klijent zakazao.
