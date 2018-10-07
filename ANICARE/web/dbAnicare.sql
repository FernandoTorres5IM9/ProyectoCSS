create database dbAnicare;
use dbAnicare;

create table tbUsrMascota
(
    idMascota varchar (30) primary key,
    MscNombre varchar (60),
    MscEspecie varchar (40),
    MscRaza varchar (40)
);

create table tbUsrDueño 
(
	idDueño varchar (30) primary key,
    dñUser varchar (40),
    dñNombre varchar (60),
    dñApePat varchar (30), 
    dñApeMat varchar (30),
    dñPassword varchar (30)
);

create table tbRelDueñoMasc
(
	idRelDueñoMasc varchar (30) primary key,
    idDueño varchar (30),
    idMascota varchar (30),
    
    foreign key(idDueño) references tbUsrDueño(idDueño),
    foreign key(idMascota) references tbUsrMascota(idMascota)
);

create table tbContacto
(
	idContacto varchar (30) primary key,
    idDueño varchar (30),
    ctoTelefonoCel int (10),
    ctoCorreo varchar (50),
    
    foreign key(idDueño) references tbUsrDueño(idDueño)
    
);

create table tbMscHistorial 
(
	idMscHistorial varchar (30) primary key,
    idMascota varchar (30),
    hisEdad int (2),
    hisGenero varchar (20),
    hisVacunas varchar (60),
    hisAlergias varchar (60),
    hisPesokg int (3),
    hisLargo float (5),
    hisAncho float (5),
    hisEnferm varchar (30),
	
    foreign key(idMascota) references tbUsrMascota(idMascota)
);

create table tbVeterinario
(
	idVeter varchar (30) primary key,
    vtrNombre varchar (40),
    vrtApePat varchar (40),
    vtrApeMat varchar (40),
    vtrConsult varchar (40)
);

create table tbRelVeterMasc
(
	idRelVeterMasc varchar (30) primary key,
    idMascota varchar (30),
    idVeter varchar (30),
    
    foreign key(idMascota) references tbUsrMascota(idMascota),
    foreign key(idVeter) references tbVeterinario(idVeter)
);

create table tbEntrenador
(
	idEntrenador varchar (30) primary key,
    entNombre varchar (40),
    entApePat varchar (40),
    entApeMat varchar (40),
    entLugar varchar (40)
);

create table tbEntrenamiento
(
	idEntrenamiento varchar (30) primary key,
    idEntrenador varchar (30),
    idMascota varchar (30),
    entrNivel varchar (5),
    entrLugar varchar (40),
    
    foreign key (idEntrenador) references tbEntrenador(idEntrenador),
    foreign key (idMascota) references tbUsrMascota(idMascota)
);