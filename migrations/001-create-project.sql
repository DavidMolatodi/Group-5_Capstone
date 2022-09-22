create table Names (
id integer primary key AUTOINCREMENT,
Personas text
);

create table Denominations (
id integer primary key AUTOINCREMENT,
Race text
);

create table Agegroup(
id integer primary key AUTOINCREMENT,
Age integer
);


create table Gender(
id integer primary key AUTOINCREMENT,
Sex text
);

create table Skintexture (
id integer primary key AUTOINCREMENT,
typesOfSkin text 
);

create table Recommendations(
id integer primary key AUTOINCREMENT,
ProductsIngredients text
);

create table NDSR (
id integer primary key AUTOINCREMENT,
Name_id integer,
Race_id integer,
Agegroup_id integer,
Gender_id integer,
Skintexture_id integer,
Recommendations_id integer,
 FOREIGN KEY (Name_id) REFERENCES Name(id),
 FOREIGN KEY (Race_id) REFERENCES Race(id),
 FOREIGN KEY (Agegroup_id) REFERENCES Agegroup(id),
 FOREIGN KEY (Gender_id) REFERENCES Gender(id),
 FOREIGN KEY (Skintexture_id) REFERENCES Skintexture(id),
 FOREIGN KEY (Recommendations_id) REFERENCES Recommendations(id)
 );