-- 1
SELECT customer_name
FROM account
    INNER JOIN depositor ON account.account_number = depositor.account_number
WHERE balance > 500;
-- 2
SELECT branch_city
FROM branch
    NATURAL JOIN loan
WHERE amount BETWEEN 1000 AND 2000;
-- 3
SELECT balance * 1.10
FROM account
WHERE branch_name = 'Downtown';
-- 4
SELECT balance
FROM account
    NATURAL JOIN branch
    NATURAL JOIN loan
WHERE loan_number = 'L-15';
-- 5
SELECT branch_name
FROM account
    NATURAL JOIN depositor
WHERE customer_name LIKE 'J%n';
-- 6
SELECT amount
FROM loan
WHERE branch_name LIKE '______';
-- 7
SELECT amount
FROM loan
    NATURAL JOIN borrower
    NATURAL JOIN customer
WHERE customer_city LIKE '%_%';
-- 8
SELECT assets
FROM branch
    NATURAL JOIN account
    NATURAL JOIN depositor
WHERE customer_name = 'Johnson';
-- 9
SELECT customer_name
FROM borrower
    NATURAL JOIN customer
    NATURAL JOIN loan
    NATURAL JOIN branch
WHERE branch_city = customer_city;
-- 10
SELECT SUM(balance)
FROM account
    NATURAL JOIN branch
WHERE branch_city = 'Lisbon';
-- 11
SELECT customer_name
FROM customer
    NATURAL JOIN depositor
    NATURAL JOIN account
    NATURAL JOIN branch
WHERE customer_city = branch_city;