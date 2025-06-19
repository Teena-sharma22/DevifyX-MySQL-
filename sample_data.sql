use project;
INSERT INTO clients (Name, email, phone, address) VALUES
('Alice Johnson', 'alice.johnson@example.com', '123-456-7890', '123 Maple Street, Springfield'),
('Bob Smith', 'bob.smith@example.com', '234-567-8901', '456 Oak Avenue, Rivertown'),
('Carol White', 'carol.white@example.com', '345-678-9012', '789 Pine Lane, Lakeside'),
('David Green', 'david.green@example.com', '456-789-0123', '101 Cedar Rd, Hillview'),
('Eva Blue', 'eva.blue@example.com', '567-890-1234', '202 Birch Blvd, Brookfield'),
('Frank Stone', 'frank.stone@example.com', '678-901-2345', '303 Walnut Way, Meadowtown');

INSERT INTO Product (Name, description, price, tax_rate) VALUES
('Website Design', 'Full design service for corporate websites.', 1500.00, 10.00),
('SEO Optimization', 'Search engine optimization package.', 500.00, 8.50),
('Hosting Plan - 1 Year', 'Web hosting for 1 year.', 120.00, 5.00),
('Mobile App Development', 'Custom app for Android & iOS.', 3000.00, 12.00),
('Logo Design', 'Professional logo design service.', 250.00, 5.00),
('Email Marketing Setup', 'Setup and configure email campaigns.', 400.00, 7.50);

INSERT INTO Quotation (client_id, status) VALUES
(1, 'Draft'),     -- Alice
(2, 'Sent'),      -- Bob
(3, 'Approved'),  -- Carol
(4, 'Draft'),     -- David
(5, 'Sent'),      -- Eva
(6, 'Approved'); -- Frank

INSERT INTO Quotation_itemss (quotation_id, product_id, quantity, discount) VALUES
(1, 1, 1, 100.00),  -- Alice: Website Design
(1, 2, 1, 0.00),    -- Alice: SEO
(2, 2, 2, 50.00),   -- Bob: SEO x2
(3, 3, 1, 0.00),    -- Carol: Hosting
(4, 4, 1, 300.00),  -- David: Mobile App
(4, 5, 1, 0.00),    -- David: Logo Design
(5, 6, 2, 50.00),   -- Eva: Email Marketing
(6, 1, 1, 200.00);  -- Frank: Website Design

CALL generate_invoice(1);
CALL generate_invoice(2);
CALL generate_invoice(3);
CALL generate_invoice(4);
CALL generate_invoice(5);
CALL generate_invoice(6);

CALL mark_invoice_paid(1);
CALL mark_invoice_paid(2);
INSERT INTO clients (Name, email, phone, address) VALUES
('Dev Kohli', 'devkholi@example.com', '123-456-5533', '12 hari nagar, north africa');
