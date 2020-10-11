-- Exercise1: What state figures in the 145th line of our database? 
-- Answer: Tennessee
SELECT state 
FROM birdstrikes 
WHERE id = 146;


-- Exercise2: What is flight_date of the latest birstrike in this database?
-- Answer: 2000-04-18
SELECT flight_date
FROM birdstrikes
ORDER BY flight_date DESC
LIMIT 1;



-- Exercise3: What was the cost of the 50th most expensive damage?
-- Answer: 5345
SELECT DISTINCT cost
FROM birdstrikes
ORDER BY cost desc
LIMIT 49, 1;



-- Exercise4: What state figures in the 2nd record, if you filter out all records which have no state and no bird_size specified?
-- Answer: Colorado
SELECT state 
FROM birdstrikes
WHERE state IS NOT NULL AND state != ''AND 
	  bird_size IS NOT NULL AND bird_size != ''
LIMIT 1,1;


-- Exercise5:  How many days elapsed between the current date and the flights happening in week 52, for incidents from Colorado? (Hint: use NOW, DATEDIFF, WEEKOFYEAR)
-- Answer: 7581 from today 2020-10-03
SELECT id, DATEDIFF(current_date(), flight_date) AS 'days_elapsed_from_today',
	   WEEKOFYEAR(flight_date) AS week_of_year
FROM birdstrikes
WHERE state = 'Colorado'
ORDER BY flight_date
LIMIT 1;

