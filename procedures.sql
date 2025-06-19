use project;

CREATE PROCEDURE generate_invoice(IN in_quotation_id INT)
BEGIN
    DECLARE inv_number VARCHAR(50);
    SET inv_number = CONCAT('INV-', in_quotation_id, '-', YEAR(NOW()));
    
    INSERT INTO invoices (quotation_id, invoice_number, status)
    VALUES (in_quotation_id, inv_number, 'Unpaid');

    UPDATE quotations SET status = 'Approved' WHERE quotation_id = in_quotation_id;
END$$