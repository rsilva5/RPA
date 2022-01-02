-- 1
-- What are the column names?
SELECT * 
FROM transaction_data
LIMIT 5;
-- The column names are id, full_name, email, zip, and ip_address

-- 2
-- Find the full_names and emails
-- of the transactions listing 20252 as the zip code.
SELECT full_name, email, zip
FROM transaction_data 
WHERE zip == 20252;


-- 3
-- The fraudsters thought it would be funny to use ‘Art Vandelay’ for their full name or add a ‘der’ for their middle name.
-- Use a query to find the names 
-- and emails associated with these transactions.
SELECT full_name, email
FROM transaction_data 
WHERE full_name = 'Art Vandelay' 
  OR full_name LIKE '% der %';
-- There are 8 fraudsters

-- 4
-- There are some irregularities in the IP addresses where transactions are originating from.For example, any IP address beginning with ‘10.’ is reserved for internal use.We shouldn’t see IP addresses like this accessing Reputable Company’s service.Find the ip_addresses and emails listed with these transactions.
SELECT ip_address, email
FROM transaction_data
WHERE ip_address LIKE '10.%';
-- There are 6 ip_addresses and 6 emails 

-- 5
-- Find the emails in transaction_data with
-- ‘temp_email.com’ as a domain.
SELECT email
FROM transaction_data
WHERE email LIKE '%temp_email.com';
-- There are 4 temp emails

-- 6
-- The finance department is looking for a specific transaction. 
-- They know that the transaction occurred from an ip address starting 
-- with ‘120.’ and their full name starts with ‘John’.
-- Can you find the transaction?
SELECT *
FROM transaction_data
WHERE full_name LIKE 'John%' 
  AND ip_address LIKE '120.%';
-- The transaction id is 672

-- 7
-- Challenge
-- Return only those customers residing in GA. Use the list of ZIP CODE prefixes
-- (https://en.wikipedia.org/wiki/List_of_ZIP_Code_prefixes)
-- to determine the best query for zip codes belonging to Georgia(GA).

SELECT * 
FROM transaction_data
WHERE zip LIKE '30_%' 
  OR zip LIKE '31_%';

