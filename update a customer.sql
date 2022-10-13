--select * from customers

UPDATE public.customers
	SET  first_name='Alice', last_name='Hammett', 
	--email=?, phone=?,
	--created_at=?, updated_at=?
	updated_at=NOW()
	WHERE customer_id=2;
	
	delete from customers where customer_id=4