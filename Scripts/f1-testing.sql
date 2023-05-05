SELECT * FROM circuits WHERE circuitId = 24;

SELECT * FROM drivers WHERE driverId = 1;

SELECT * FROM constructors WHERE constructorId = 33;

SELECT * FROM races WHERE raceId = 33;

SELECT * FROM circuits WHERE country = 'Spain' ALLOW FILTERING;

SELECT * FROM races WHERE year = 2021 ALLOW FILTERING;

SELECT * FROM races WHERE circuitId = 23 ALLOW FILTERING;

UPDATE drivers SET number = 77, code = 'VER', surname = 'Verstappen' WHERE driverId = 33;

DELETE FROM races WHERE raceId = 102;
