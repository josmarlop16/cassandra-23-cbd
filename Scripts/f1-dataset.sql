CREATE TABLE if not exists circuits (
  circuitId int,
  circuitRef text,
  name text,
  location text,
  country text,
  lat float,
  lng float,
  alt float,
  url text,
  PRIMARY KEY (circuitId)
);

CREATE TABLE if not exists drivers (
  driverId int PRIMARY KEY,
  driverRef text,
  number int,
  code text,
  forename text,
  surname text,
  dob date,
  nationality text,
  url text
);

CREATE TABLE if not exists constructors (
  constructorId int,
  constructorRef text,
  name text,
  nationality text,
  url text,
  PRIMARY KEY (constructorId)
);

CREATE TABLE if not exists races (
  raceId int,
  year int,
  round int,
  name text,
  date timestamp,
  time text,
  url text,
  circuitId int,
  circuitName text,
  circuitLocation text,
  circuitCountry text,
  PRIMARY KEY (raceId)
);
