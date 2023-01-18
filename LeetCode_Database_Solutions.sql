# 183. Customers Who Never Order
# Write your MySQL query statement below
SELECT name AS Customers FROM Customers
WHERE
    id
NOT IN(
    SELECT CustomerId FROM Orders
);

# 175. Combine Two Tables
# Write your MySQL query statement below
SELECT FirstName, LastName, City, State
FROM Person
LEFT JOIN Address
ON Person.PersonId = Address.PersonId

# 181. Employees Earning More Than Their Managers
# Write your MySQL query statement below
SELECT a.Name AS `Employee`
FROM `Employee` AS a join `Employee` AS b
ON a.ManagerId = b.Id
AND a.Salary > b.Salary

# 182. Duplicate Emails
# Write your MySQL query statement below
SELECT email AS Email FROM Person
GROUP BY Email HAVING COUNT(*) > 1
