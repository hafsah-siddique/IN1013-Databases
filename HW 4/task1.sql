CREATE TABLE petPet (
  petname VARCHAR(20) PRIMARY KEY ,
  owner VARCHAR(45) NOT NULL,
  species VARCHAR(45) NOT NULL,
  gender CHAR(1),
  birth VARCHAR(10) NOT NULL,
  death VARCHAR(10)
);

CREATE TABLE petEvent (
  petname VARCHAR(20) NOT NULL,
  eventdate VARCHAR(10) NOT NULL,
  eventtype VARCHAR(15) NOT NULL,
  remark VARCHAR(255),
  FOREIGN KEY (petname) REFERENCES petPet(petname),
  PRIMARY KEY (petname, eventdate, eventtype)
);