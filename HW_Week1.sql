
#1-Destination that is the furthest away: HNL is the furthest away
SELECT  dest, AVG(distance) AS average_distance
FROM flights.flights 
GROUP BY flights.dest
ORDER BY average_distance DESC;

#2a-different numbers of engines: There are 4 different numbers
SELECT DISTINCT engines 
FROM planes;
#2b-For each number of engines, which aircraft have the most number of seats?: The ones with 4 engines
SELECT engines, MAX(seats) as mx_seat
FROM planes
GROUP BY engines
ORDER BY mx_seat DESC;
#Question, how could I also make it return the name of the model of the plane with those stats?

#3-Total number of flights: 857 flights
SELECT COUNT(*) AS total_flights
FROM flights;

#4-Total nubmer of flights by airlines
SELECT carrier, COUNT(*) AS flight_count
FROM flights
GROUP BY carrier;

#5-Show airlines ordered by number of flights in descending order
SELECT carrier, COUNT(*) AS flights_count
FROM flights
GROUP BY carrier
ORDER BY flights_count DESC;

#6-Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order
SELECT carrier, COUNT(*) AS flights_count
FROM flights
GROUP BY carrier
ORDER BY flights_count DESC
LIMIT 5;

#7-Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of flights in descending order.
SELECT carrier, COUNT(*) AS flights_count
FROM flights
WHERE distance > 1000
GROUP BY carrier
ORDER BY flights_count DESC
LIMIT 5;

#8-
#which airlines travels the longest distance to ATL on average
SELECT carrier, AVG(distance) as average_distance
FROM flights
WHERE dest = "ATL"
GROUP by carrier
ORDER BY average_distance DESC
LIMIT 3;
#which airlines have the most departure delay from JFK
SELECT carrier, SUM(dep_delay) as total_delay_time
FROM flights
WHERE origin = "JFK"
GROUP by carrier
ORDER by total_delay_time DESC
LIMIT 3;
