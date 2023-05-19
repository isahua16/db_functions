INSERT INTO dealership(name, location, date_established) VALUES('Dealership 1', 'Edmonton', '2006-06-14'), ('Dealership 2', 'Red Deer', '2012-08-10'), ('Dealership 3', 'Calgary', '2019-03-30');
INSERT INTO cars_for_sale(dealership_id, price, make, model, `year`) VALUES(1, 20000.00, 'Toyota', 'RAV4', 2018), (1, 35000.00, 'Ford', 'Escape', 2022), (2, 25000.00, 'Mazda', '3', 2019), (2, 45000.00, 'Tesla', 'Model S', 2023);

SELECT make, model, `year` from cars_for_sale ORDER BY `year` DESC;
SELECT name, location from dealership d ORDER BY date_established ASC LIMIT 1;
SELECT cfs.make, cfs.model, cfs.`year`, d.name, d.location from cars_for_sale cfs INNER JOIN dealership d ON cfs.dealership_id = d.id WHERE cfs.`year` > 2020 ORDER BY cfs.`year` ASC;

SELECT COUNT(id) from cars_for_sale cfs where cfs.`year` = 2019;
SELECT COUNT(cfs.id), d.date_established from dealership d INNER JOIN cars_for_sale cfs ON d.id = cfs.dealership_id GROUP BY d.id ORDER BY date_established DESC LIMIT 1;
SELECT COUNT(id) from cars_for_sale cfs GROUP BY dealership_id;
SELECT COUNT(id) from cars_for_sale cfs GROUP BY dealership_id HAVING COUNT(id) > 6;
SELECT COUNT(id) from cars_for_sale cfs where cfs.`year` > 2020 GROUP BY dealership_id HAVING COUNT(id) > 5;