CREATE TABLE bank_details (
    account_number BIGINT PRIMARY KEY,
    account_holder_name VARCHAR(255),
    bank_name VARCHAR(255),
    branch_name VARCHAR(255),
    balance BIGINT
);

ALTER TABLE bank_details ADD COLUMN account_type VARCHAR(255);
ALTER TABLE bank_details ADD COLUMN ifsc_code VARCHAR(11);
ALTER TABLE bank_details ADD COLUMN contact_number VARCHAR(15);
ALTER TABLE bank_details ADD COLUMN email VARCHAR(255);
ALTER TABLE bank_details ADD COLUMN is_active BOOLEAN;

ALTER TABLE bank_details RENAME COLUMN account_type TO acc_type;
ALTER TABLE bank_details RENAME COLUMN ifsc_code TO ifsc;
ALTER TABLE bank_details RENAME COLUMN contact_number TO phone_number;
ALTER TABLE bank_details RENAME COLUMN email TO email_address;
ALTER TABLE bank_details RENAME COLUMN is_active TO active_status;

INSERT INTO bank_details (account_number, account_holder_name, bank_name, branch_name, balance, acc_type, ifsc, phone_number, email_address, active_status)
VALUES
(9876543210, 'Amit Sharma', 'State Bank of India', 'Delhi', 100000, 'Savings', 'SBIN0001', '987-654-3210', 'amit.sharma@example.com', TRUE),
(9876543211, 'Priya Gupta', 'HDFC Bank', 'Mumbai', 50000, 'Checking', 'HDFC0002', '987-654-3211', 'priya.gupta@example.com', TRUE),
(9876543212, 'Rajesh Kumar', 'ICICI Bank', 'Bengaluru', 200000, 'Savings', 'ICIC0003', '987-654-3212', 'rajesh.kumar@example.com', TRUE),
(9876543213, 'Sneha Patel', 'Axis Bank', 'Chennai', 75000, 'Checking', 'AXIS0004', '987-654-3213', 'sneha.patel@example.com', FALSE),
(9876543214, 'Ravi Verma', 'State Bank of India', 'Delhi', 120000, 'Savings', 'SBIN0005', '987-654-3214', 'ravi.verma@example.com', TRUE),
(9876543215, 'Kavita Rao', 'HDFC Bank', 'Mumbai', 30000, 'Checking', 'HDFC0006', '987-654-3215', 'kavita.rao@example.com', TRUE),
(9876543216, 'Manoj Reddy', 'ICICI Bank', 'Bengaluru', 400000, 'Savings', 'ICIC0007', '987-654-3216', 'manoj.reddy@example.com', TRUE),
(9876543217, 'Anjali Mehta', 'Axis Bank', 'Chennai', 65000, 'Checking', 'AXIS0008', '987-654-3217', 'anjali.mehta@example.com', TRUE),
(9876543218, 'Sandeep Singh', 'State Bank of India', 'Delhi', 95000, 'Savings', 'SBIN0009', '987-654-3218', 'sandeep.singh@example.com', FALSE),
(9876543219, 'Nisha Sharma', 'HDFC Bank', 'Mumbai', 220000, 'Checking', 'HDFC0010', '987-654-3219', 'nisha.sharma@example.com', TRUE);

UPDATE bank_details SET balance = 110000 WHERE account_number = 9876543210;
UPDATE bank_details SET email_address = 'priya.gupta@newdomain.com' WHERE account_number = 9876543211;
UPDATE bank_details SET phone_number = '999-999-9999' WHERE account_number = 9876543212;
UPDATE bank_details SET balance = 80000 WHERE account_number = 9876543213;
UPDATE bank_details SET active_status = TRUE WHERE account_number = 9876543214;

DELETE FROM bank_details WHERE account_number = 9876543215;
DELETE FROM bank_details WHERE account_number = 9876543216;
DELETE FROM bank_details WHERE account_number = 9876543217;


SELECT * FROM bank_details WHERE acc_type = 'Savings';

SELECT * FROM bank_details WHERE acc_type = 'Checking' AND active_status = TRUE;

SELECT * FROM bank_details WHERE acc_type = 'Savings' OR acc_type = 'Checking';

SELECT * FROM bank_details WHERE account_number IN (9876543210, 9876543212, 9876543214);

SELECT * FROM bank_details WHERE account_number NOT IN (9876543210, 9876543212, 9876543214);