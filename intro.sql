--select * from customers


--Select productionname, customerid from orders
--where 
--customerid = 2 
--and 
--create_time > '2022/01/01';

--select * from orders where customerid !=2
--select * from customers 
--inner join orders on customers.customerid = orders.customerid

--select * from customers left join orders on customers.customerid = orders.customerid
SELECT * FROM customers inner join orders on customers.customerid = orders.customerid -- everything matching
SELECT * FROM customers full join  orders on customers.customerid = orders.customerid -- all 
SELECT * FROM customers left join  orders on customers.customerid = orders.customerid -- care about customers only
SELECT * FROM customers right join orders on customers.customerid = orders.customerid -- care about orders only

update customers set name = 'Cari' where customerid=4
select * from customers order by customers.customerid
