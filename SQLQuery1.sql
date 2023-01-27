create table formula (
	IDformule int primary key identity(1,1) not null,
	marka nvarchar(30) not null,
	godinaProizvodnje int not null,
)

create table vozaci (
	IDvozaca int primary key not null identity(1,1),
	imePrezime nvarchar(50) not null,
	imeTima nvarchar(50) not null,
)

create table writeUs (
	idWriteUs int primary key not null identity(1,1),
	imePrezime nvarchar(40) not null,
	email nvarchar(30) not null,
	poruka nvarchar(50) not null,
)
