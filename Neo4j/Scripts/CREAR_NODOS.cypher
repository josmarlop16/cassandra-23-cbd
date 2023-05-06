// CREAR CIRCUIT
//Para poder crear correctamente los nodos se debe cambiar la url por la del archivo en su ordenador personal.


LOAD CSV WITH HEADERS FROM "http://localhost:11001/project-efbba901-d4ce-4196-aceb-bcceb0aa22ae/circuits.csv" AS row
CREATE (:Circuit { 
  circuitId: row.circuitId,
  circuitRef: row.circuitRef,
  name: row.name,
  location: row.location,
  country: row.country,
  lat: row.lat,
  lng: row.lng,
  alt: row.alt,
  url: row.url
})

// CREAR CONSTRUCTOR
LOAD CSV WITH HEADERS FROM "http://localhost:11001/project-efbba901-d4ce-4196-aceb-bcceb0aa22ae/constructors.csv" AS row
CREATE (:Constructor { 
  constructorId: row.constructorId,
  constructorRef: row.constructorRef,
  name: row.name,
  nationality: row.nationality,
  url: row.url
})

// CREAR CONSTRUCTOR_RESULTS

LOAD CSV WITH HEADERS FROM "http://localhost:11001/project-efbba901-d4ce-4196-aceb-bcceb0aa22ae/constructor_results.csv" AS row
CREATE (:ConstructorResult { 
  constructorResultsId: row.constructorResultsId,
  raceId: row.raceId,
  constructorId: row.constructorId,
  points: row.points,
  status: row.status
})

//CREAR DRIVER
LOAD CSV WITH HEADERS FROM "http://localhost:11001/project-efbba901-d4ce-4196-aceb-bcceb0aa22ae/drivers.csv" AS row
CREATE (:Driver { 
  driverId: row.driverId,
  driverRef: row.driverRef,
  number: row.number,
  code: row.code,
  forename: row.forename,
  surname: row.surname,
  dob: row.dob,
  nationality: row.nationality,
  url: row.url
})

// CREAR RACE
LOAD CSV WITH HEADERS FROM "http://localhost:11001/project-efbba901-d4ce-4196-aceb-bcceb0aa22ae/races.csv" AS row
CREATE (:Race { 
  raceId: row.raceId,
  year: row.year,
  round: row.round,
  circuitId: row.circuitId,
  name: row.name,
  date: row.date,
  time: row.time,
  url: row.url,
  fp1_date: row.fp1_date,
  fp1_time: row.fp1_time,
  fp2_date: row.fp2_date,
  fp2_time: row.fp2_time,
  fp3_date: row.fp3_date,
  fp3_time: row.fp3_time,
  quali_date: row.quali_date,
  quali_time: row.quali_time,
  sprint_date: row.sprint_date,
  sprint_time: row.sprint_time
})

// CREAR RESULTS
LOAD CSV WITH HEADERS FROM "http://localhost:11001/project-efbba901-d4ce-4196-aceb-bcceb0aa22ae/results.csv" AS row
CREATE (:Result { 
  resultId: row.resultId,
  raceId: row.raceId,
  driverId: row.driverId,
  constructorId: row.constructorId,
  number: row.number,
  grid: row.grid,
  position: row.position,
  positionText: row.positionText,
  positionOrder: row.positionOrder,
  points: row.points,
  laps: row.laps,
  time: row.time,
  milliseconds: row.milliseconds,
  fastestLap: row.fastestLap,
  rank: row.rank,
  fastestLapTime: row.fastestLapTime,
  fastestLapSpeed: row.fastestLapSpeed,
  statusId: row.statusId
})