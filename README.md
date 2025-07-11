
---

## ⚙️ Setup Instructions

### 1. Create the Database

Use MySQL or MariaDB. Run the provided SQL scripts to create all required tables.

### 2. Insert Sample Data

Run SQL `INSERT` statements to populate tables with:
- Clients
- Products
- Quotations
- Quotation items
- Invoices

### 3. Add Procedures, Triggers or Functions

You can add business logic such as:
- Auto-generating invoice numbers
- Automatically updating quotation status when invoice is created or paid

---

## ✅ Testing Instructions

### 1. Test Data Integrity

- Insert clients and verify they appear correctly.
- Create quotations linked to clients.
- Add quotation items linking products to quotations.
- Generate invoices linked to quotations.

### 2. Test Business Logic

- Status transitions on quotations (`Draft` → `Sent` → `Approved`)
- Discount and tax calculations on quotation items
- Invoice status update (`Unpaid` → `Paid`)

### 3. Run Example Queries

- Fetch all quotations for a specific client
- List all products in a specific quotation
- Retrieve all invoices with related client and quotation details

---

## 🔧 steps with files

 [Tables.sql](Tables.sql) → [sample data for testing](sample_data.sql) → [procedures](procedures.sql)→[triggers in it](triggers.sql) →  [queries for testin](queries.sql)
 

> [Tables required ](Tables.sql) 

> [sample data for testing](sample_data.sql)

> [procedures](procedures.sql)

> [triggers in it](triggers.sql)

> [queries for testin](queries.sql)



