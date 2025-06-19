use project;

select * from clients;
select * from product;
select * from quotation;
select * from quotation_itemss;
select * from invoices;

SELECT 
    q.quotation_id,
    c.name AS client_name,
    SUM(p.price * qi.quantity) AS gross_total,
    SUM((p.price * qi.quantity) * (p.tax_rate / 100)) AS tax_amount,
    SUM(qi.discount) AS total_discount,
    SUM((p.price * qi.quantity) + ((p.price * qi.quantity) * (p.tax_rate / 100)) - qi.discount) AS final_total
FROM quotation q
JOIN clients c ON q.client_id = c.client_id
JOIN quotation_itemsS qi ON q.quotation_id = qi.quotation_id
JOIN product p ON qi.product_id = p.product_id
GROUP BY q.quotation_id;


SELECT * FROM audit_logs WHERE table_name = 'clients';
