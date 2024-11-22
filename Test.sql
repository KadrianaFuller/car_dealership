USE car_dealership;

-- 1. Get all dealerships 
SELECT * 
FROM dealerships;

-- 2. Find all vehicles for a specific dealership
SELECT * 
FROM vehicles v 
JOIN inventory i ON v.vin = i.vin
WHERE i.dealership_id = 1;

-- 3. Find a car by VIN
SELECT * FROM vehicles
WHERE vin = '1HGCM82633A004352';

-- 4. Find the dealership where a certain car is located by VIN
SELECT  *
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
WHERE i.vin = '1HGCM82633A004352';

-- 5. Find all Dealerships that have a certain car type 
SELECT DISTINCT *
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.vin = v.vin
WHERE v.make = 'Ford'
  AND v.model = 'Mustang'
  AND v.color = 'Black';
  

-- 6. Get all sales information for a specific dealer for a specific date range 
SELECT *
FROM sales_contract sc
JOIN vehicles v ON sc.vin = v.vin
JOIN inventory i ON v.vin = i.vin
WHERE i.dealership_id = 1
  AND sc.sale_date BETWEEN '2024-01-01' AND '2024-12-01';