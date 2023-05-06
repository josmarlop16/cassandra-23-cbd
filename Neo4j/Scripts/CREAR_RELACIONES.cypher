//CREAR RELACIÓN HIRED
MATCH (c:Constructor), (d:Driver), (r:Result)
WHERE c.constructorId = r.constructorId AND d.driverId = r.driverId
MERGE (c)-[:HIRED]->(d)


//CREAR RELACIÓN RACE_AT
MATCH (c:Circuit), (r:Race)
WHERE c.circuitId = r.circuitId
MERGE (c)-[:RACED_AT]->(r)


//CREAR RELACIÓN RACE_IN
MATCH (r:Race),(d:Driver),(res:Result)
WHERE r.raceId = res.raceId AND d.driverId = res.driverId
CREATE (d)-[:RACE_IN]->(r)

//CREAR RELACIÓN WON
MATCH (r:Race), (d:Driver), (res:Result)
WHERE r.raceId = res.raceId AND d.driverId = res.driverId AND res.position = "1"
MERGE (d)-[:WON]->(r)