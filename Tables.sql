create database Project;
use Project;
create table clients(
	Client_id int auto_increment primary key , 
	Name Varchar(100),
    email varchar(100),
	phone varchar(20),
    address Text); 

create table Product(
	Product_id int auto_increment primary key , 
    Name varchar(100),
    description text,
	price decimal(10,2), 
	tax_rate decimal (5,2) );

create table Quotation (
	Quotation_id int auto_increment primary Key ,
    client_id int ,
    status enum ('Draft','Sent','Approved') default 'Draft', 
    created_at datetime default current_timestamp,
f	oreign key (client_id) references clients(client_id));

CREATE TABLE Quotation_itemss(
	item_id int auto_increment primary key,
    quotation_id int,
    product_id int ,
	quantity int,
    discount decimal (10,2) default 0.00 , -- fixed amount 
	foreign key (quotation_id) references Quotation(Quotation_id),
	foreign key (product_id) references Product(Product_id));

CREATE TABLE invoices (
	invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    quotation_id INT,
    invoice_number VARCHAR(50) UNIQUE,
    status ENUM('Unpaid', 'Paid') DEFAULT 'Unpaid',
    issued_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (quotation_id) REFERENCES Quotation(Quotation_id)
);

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
WHERE q.quotation_id = 1
GROUP BY q.quotation_id;