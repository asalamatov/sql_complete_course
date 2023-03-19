use sql_invoicing;

create or replace view sales_by_client as
select c.client_id, c.name, 
	sum(invoice_total) as total_sales
FROM clients c
JOIN invoices i using (client_id)
GROUP BY client_id, name