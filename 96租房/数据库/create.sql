create table DISTRICT  (
   ID                   int(4)                       not null AUTO_INCREMENT,
   NAME                 varchar(50)                   not null,
  PRIMARY KEY (`ID`)
);

create table HOUSE  (
   ID                   int(6)                       not null AUTO_INCREMENT,
   USER_ID              int(4),
   TYPE_ID              int(4),
   TITLE                varchar(50),
   DESCRIPTION          varchar(2000),
   PRICE                int(6),
   PUBDATE              DATE,
   FLOORAGE             int(4),
   CONTACT              varchar(100),
   STREET_ID            int(4),
  PRIMARY KEY (`ID`)
);

create table STREET  (
   ID                   int(4)                       not null AUTO_INCREMENT,
   NAME                 varchar(50)                   not null,
   DISTRICT_ID          int(4),
  PRIMARY KEY (`ID`)
);

create table TYPES  (
   ID                   int(4)                       not null AUTO_INCREMENT,
   NAME                 varchar(50)                   not null,
  PRIMARY KEY (`ID`)
);

create table USERS  (
   ID                   int(4)                       not null AUTO_INCREMENT,
   NAME                 varchar(50)                   not null,
   PASSWORD             varchar(50)                   not null,
   TELEPHONE            varchar(15),
   USERNAME             varchar(50),
   ISADMIN              varchar(5),
  PRIMARY KEY (`ID`)
);
