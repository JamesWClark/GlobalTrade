-- Insert data into addresses
SET IDENTITY_INSERT addresses ON;

INSERT INTO addresses (address_id, street, city, state, country) VALUES
(1, '100 N Tryon St', 'Charlotte', 'NC', 'USA'),
(2, '420 Montgomery St', 'San Francisco', 'CA', 'USA'),
(3, '270 Park Ave', 'New York', 'NY', 'USA'),
(4, '388 Greenwich St', 'New York', 'NY', 'USA'),
(5, '8 Canada Square', 'London', '', 'UK'),
(6, '1 Churchill Place', 'London', '', 'UK'),
(7, 'Taunusanlage 12', 'Frankfurt', '', 'Germany'),
(8, 'Bahnhofstrasse 45', 'Zurich', '', 'Switzerland'),
(9, 'Paradeplatz 8', 'Zurich', '', 'Switzerland'),
(10, '16 Boulevard des Italiens', 'Paris', '', 'France'),
(11, 'Ciudad Grupo Santander', 'Boadilla del Monte', '', 'Spain'),
(12, 'Bijlmerdreef 106', 'Amsterdam', '', 'Netherlands'),
(13, '29 Boulevard Haussmann', 'Paris', '', 'France'),
(14, '1-3-3 Marunouchi', 'Tokyo', '', 'Japan'),
(15, '1-1-2 Marunouchi', 'Tokyo', '', 'Japan'),
(16, '1 Basinghall Avenue', 'London', '', 'UK'),
(17, '200 Bay St', 'Toronto', '', 'Canada'),
(18, '200 West St', 'New York', 'NY', 'USA'),
(19, '1585 Broadway', 'New York', 'NY', 'USA'),
(20, 'Bahnhofstrasse 45', 'Zurich', '', 'Switzerland'),
(21, '123 Main St', 'Anytown', '', 'USA'),
(22, '456 Elm St', 'Othertown', '', 'USA'),
(23, '789 Oak St', 'Sometown', '', 'USA'),
(24, '101 Pine St', 'Anycity', '', 'USA'),
(25, '202 Birch St', 'Smalltown', '', 'USA'),
(26, '303 Cedar St', 'Bigcity', '', 'USA'),
(27, '404 Maple St', 'Oldtown', '', 'USA'),
(28, '505 Oak St', 'Gotham', '', 'USA'),
(29, '606 Pine St', 'Metropolis', '', 'USA'),
(30, '707 Elm St', 'Newtown', '', 'USA'),
(31, '808 Birch St', 'Smallville', '', 'USA'),
(32, '909 Cedar St', 'Metropolis', '', 'USA'),
(33, '1010 Maple St', 'Silicon Valley', '', 'USA'),
(34, '1111 Oak St', 'Silicon Valley', '', 'USA'),
(35, '1212 Pine St', 'New York', 'NY', 'USA'),
(36, '1313 Elm St', 'Los Angeles', 'CA', 'USA');

SET IDENTITY_INSERT addresses OFF;

-- Insert data into contacts
SET IDENTITY_INSERT contacts ON;

INSERT INTO contacts (contact_id, contact_person, phone_number, email) VALUES
(1, 'Michael Scott', '567-890-1234', 'michael.scott@abccorp.com'),
(2, 'Dwight Schrute', '678-901-2345', 'dwight.schrute@xyzltd.com'),
(3, 'Jim Halpert', '789-012-3456', 'jim.halpert@globaltraders.com'),
(4, 'Pam Beesly', '890-123-4567', 'pam.beesly@universalexports.com'),
(5, 'Stanley Hudson', '901-234-5678', 'stanley.hudson@acmecorp.com'),
(6, 'Peter Gibbons', '012-345-6789', 'peter.gibbons@initech.com'),
(7, 'Alice Abernathy', '123-456-7891', 'alice.abernathy@umbrella.com'),
(8, 'Bruce Wayne', '234-567-8902', 'bruce.wayne@wayneenterprises.com'),
(9, 'Tony Stark', '345-678-9013', 'tony.stark@starkindustries.com'),
(10, 'Norman Osborn', '456-789-0124', 'norman.osborn@oscorp.com'),
(11, 'Lex Luthor', '567-890-1235', 'lex.luthor@lexcorp.com'),
(12, 'Clark Kent', '678-901-2346', 'clark.kent@dailyplanet.com'),
(13, 'Richard Hendricks', '789-012-3457', 'richard.hendricks@piedpiper.com'),
(14, 'Gavin Belson', '890-123-4568', 'gavin.belson@hooli.com'),
(15, 'George Costanza', '901-234-5679', 'george.costanza@vandelay.com'),
(16, 'Brennan Huff', '012-345-6780', 'brennan.huff@prestigeworldwide.com'),
(17, 'John Doe', '123-456-7890', 'john.doe@bofa.com'),
(18, 'Jane Smith', '234-567-8901', 'jane.smith@wellsfargo.com'),
(19, 'Alice Johnson', '345-678-9012', 'alice.johnson@chase.com'),
(20, 'Bob Brown', '456-789-0123', 'bob.brown@citibank.com'),
(21, 'Charlie Davis', '567-890-1234', 'charlie.davis@hsbc.com'),
(22, 'Diana Evans', '678-901-2345', 'diana.evans@barclays.com'),
(23, 'Evan Foster', '789-012-3456', 'evan.foster@db.com'),
(24, 'Fiona Green', '890-123-4567', 'fiona.green@ubs.com'),
(25, 'George Harris', '901-234-5678', 'george.harris@creditsuisse.com'),
(26, 'Hannah Jackson', '012-345-6789', 'hannah.jackson@bnpparibas.com'),
(27, 'Ian King', '123-456-7891', 'ian.king@santander.com'),
(28, 'Jackie Lee', '234-567-8902', 'jackie.lee@ing.com'),
(29, 'Karen Miller', '345-678-9013', 'karen.miller@socgen.com'),
(30, 'Liam Nelson', '456-789-0124', 'liam.nelson@mizuho.com'),
(31, 'Mia Owens', '567-890-1235', 'mia.owens@smbc.com'),
(32, 'Noah Parker', '678-901-2346', 'noah.parker@sc.com'),
(33, 'Olivia Quinn', '789-012-3457', 'olivia.quinn@rbc.com'),
(34, 'Paul Roberts', '890-123-4568', 'paul.roberts@goldmansachs.com'),
(35, 'Quincy Scott', '901-234-5679', 'quincy.scott@morganstanley.com'),
(36, 'Rachel Taylor', '012-345-6780', 'rachel.taylor@ubs.com');

SET IDENTITY_INSERT contacts OFF;

-- Insert data into institutions
SET IDENTITY_INSERT institutions ON;

INSERT INTO institutions (institution_id, name, address_id, contact_id) VALUES
(1, 'Bank of America', 1, 17),
(2, 'Wells Fargo', 2, 18),
(3, 'Chase Bank', 3, 19),
(4, 'Citibank', 4, 20),
(5, 'HSBC', 5, 21),
(6, 'Barclays', 6, 22),
(7, 'Deutsche Bank', 7, 23),
(8, 'UBS', 8, 24),
(9, 'Credit Suisse', 9, 25),
(10, 'BNP Paribas', 10, 26),
(11, 'Santander', 11, 27),
(12, 'ING', 12, 28),
(13, 'Societe Generale', 13, 29),
(14, 'Mizuho Bank', 14, 30),
(15, 'Sumitomo Mitsui Banking Corporation', 15, 31),
(16, 'Standard Chartered', 16, 32),
(17, 'Royal Bank of Canada', 17, 33),
(18, 'Goldman Sachs', 18, 34),
(19, 'Morgan Stanley', 19, 35),
(20, 'UBS', 20, 36);

SET IDENTITY_INSERT institutions OFF;

-- Insert data into party_roles
SET IDENTITY_INSERT party_roles ON;

INSERT INTO party_roles (role_id, role) VALUES
(1, 'Buyer'),
(2, 'Seller');

SET IDENTITY_INSERT party_roles OFF;

-- Insert data into parties
SET IDENTITY_INSERT parties ON;

INSERT INTO parties (party_id, name, address_id, contact_id, role_id) VALUES
(1, 'ABC Corp', 21, 1, 1),
(2, 'XYZ Ltd', 22, 2, 2),
(3, 'Global Traders', 23, 3, 1),
(4, 'Universal Exports', 24, 4, 2),
(5, 'Acme Corp', 25, 5, 1),
(6, 'Initech', 26, 6, 2),
(7, 'Umbrella Corp', 27, 7, 1),
(8, 'Wayne Enterprises', 28, 8, 2),
(9, 'Stark Industries', 29, 9, 1),
(10, 'Oscorp', 30, 10, 2),
(11, 'LexCorp', 31, 11, 1),
(12, 'Daily Planet', 32, 12, 2),
(13, 'Pied Piper', 33, 13, 1),
(14, 'Hooli', 34, 14, 2),
(15, 'Vandelay Industries', 35, 15, 1),
(16, 'Prestige Worldwide', 36, 16, 2);

SET IDENTITY_INSERT parties OFF;

-- Insert data into letter_types
SET IDENTITY_INSERT letter_types ON;

INSERT INTO letter_types (letter_type_id, type) VALUES
(1, 'Standby'),
(2, 'Import'),
(3, 'Export'),
(4, 'Revocable'),
(5, 'Irrevocable'),
(6, 'Confirmed'),
(7, 'Unconfirmed'),
(8, 'Transferable');

SET IDENTITY_INSERT letter_types OFF;

-- Insert data into letter_statuses
SET IDENTITY_INSERT letter_statuses ON;

INSERT INTO letter_statuses (letter_status_id, status) VALUES
(1, 'Active'),
(2, 'Expired'),
(3, 'Cancelled');

SET IDENTITY_INSERT letter_statuses OFF;

-- Insert data into letters_of_credit
SET IDENTITY_INSERT letters_of_credit ON;

INSERT INTO letters_of_credit (letter_id, applicant_id, beneficiary_id, issuing_bank_id, advising_bank_id, amount, issue_date, expiry_date, letter_type_id, letter_status_id) VALUES
(1, 1, 2, 1, 2, 100000.00, '2023-01-01', '2023-12-31', 1, 1),
(2, 3, 4, 3, 4, 200000.00, '2023-02-01', '2023-11-30', 2, 1),
(3, 1, 4, 2, 3, 150000.00, '2023-03-01', '2023-10-31', 3, 2),
(4, 3, 2, 4, 1, 250000.00, '2023-04-01', '2023-09-30', 6, 3),
(5, 5, 6, 5, 6, 300000.00, '2023-05-01', '2023-08-31', 4, 1),
(6, 7, 8, 7, 8, 350000.00, '2023-06-01', '2023-07-31', 5, 2),
(7, 9, 10, 9, 10, 400000.00, '2023-07-01', '2023-06-30', 8, 3),
(8, 11, 12, 11, 12, 450000.00, '2023-08-01', '2023-05-31', 7, 1),
(9, 13, 14, 13, 14, 500000.00, '2023-09-01', '2023-04-30', 6, 2),
(10, 15, 16, 15, 16, 550000.00, '2023-10-01', '2023-03-31', 1, 3),
(11, 1, 2, 1, 2, 600000.00, '2023-11-01', '2023-02-28', 2, 1),
(12, 3, 4, 3, 4, 650000.00, '2023-12-01', '2023-01-31', 3, 2),
(13, 1, 3, 2, 4, 700000.00, '2024-01-01', '2024-12-31', 1, 1),
(14, 5, 7, 6, 8, 750000.00, '2024-02-01', '2024-11-30', 2, 1),
(15, 9, 11, 10, 12, 800000.00, '2024-03-01', '2024-10-31', 3, 2),
(16, 13, 15, 14, 16, 850000.00, '2024-04-01', '2024-09-30', 6, 3);

SET IDENTITY_INSERT letters_of_credit OFF;

-- Insert data into standby_letters_of_credit
SET IDENTITY_INSERT standby_letters_of_credit ON;

INSERT INTO standby_letters_of_credit (standby_letter_id, letter_id, extension_date, fee) VALUES
(1, 1, '2023-06-01', 500.00),
(2, 3, '2023-08-01', 700.00),
(3, 5, '2023-10-01', 900.00),
(4, 7, '2023-12-01', 1100.00),
(5, 9, '2024-02-01', 1300.00),
(6, 11, '2024-04-01', 1500.00),
(7, 13, '2024-06-01', 1700.00),
(8, 15, '2024-08-01', 1900.00);

SET IDENTITY_INSERT standby_letters_of_credit OFF;

-- Insert data into guarantees
SET IDENTITY_INSERT guarantees ON;

INSERT INTO guarantees (guarantee_id, letter_id, guarantee_amount) VALUES
(1, 1, 50000.00),
(2, 3, 150000.00),
(3, 5, 250000.00),
(4, 7, 350000.00),
(5, 9, 450000.00),
(6, 11, 550000.00),
(7, 13, 650000.00),
(8, 15, 750000.00);

SET IDENTITY_INSERT guarantees OFF;

-- Insert data into document_types
SET IDENTITY_INSERT document_types ON;

INSERT INTO document_types (document_type_id, document_type, description) VALUES
(1, 'Commercial Invoice', 'Invoice for commercial transactions'),
(2, 'Bill of Lading', 'Document issued by a carrier to acknowledge receipt of cargo'),
(3, 'Insurance Document', 'Document providing details of insurance coverage'),
(4, 'Certificate of Inspection', 'Document certifying that goods have been inspected');

SET IDENTITY_INSERT document_types OFF;

-- Insert data into documents
SET IDENTITY_INSERT documents ON;

INSERT INTO documents (document_id, letter_id, document_type_id, document_path) VALUES
(1, 1, 1, '/path/to/invoice1.pdf'),
(2, 1, 2, '/path/to/bill1.pdf'),
(3, 2, 3, '/path/to/insurance1.pdf'),
(4, 2, 4, '/path/to/certificate1.pdf'),
(5, 3, 1, '/path/to/invoice2.pdf'),
(6, 4, 2, '/path/to/bill2.pdf'),
(7, 5, 3, '/path/to/insurance2.pdf'),
(8, 6, 4, '/path/to/certificate2.pdf'),
(9, 7, 1, '/path/to/invoice3.pdf'),
(10, 8, 2, '/path/to/bill3.pdf'),
(11, 9, 3, '/path/to/insurance3.pdf'),
(12, 10, 4, '/path/to/certificate3.pdf'),
(13, 11, 1, '/path/to/invoice4.pdf'),
(14, 12, 2, '/path/to/bill4.pdf'),
(15, 13, 3, '/path/to/insurance4.pdf'),
(16, 14, 4, '/path/to/certificate4.pdf'),
(17, 15, 1, '/path/to/invoice5.pdf'),
(18, 16, 2, '/path/to/bill5.pdf');

SET IDENTITY_INSERT documents OFF;

-- Insert data into transaction_types
SET IDENTITY_INSERT transaction_types ON;

INSERT INTO transaction_types (transaction_type_id, transaction_type, description) VALUES
(1, 'Payment', 'Payment transaction'),
(2, 'Fee', 'Fee transaction'),
(3, 'Extension', 'Extension transaction');

SET IDENTITY_INSERT transaction_types OFF;

-- Insert data into transactions
SET IDENTITY_INSERT transactions ON;

INSERT INTO transactions (transaction_id, letter_id, transaction_date, amount, transaction_type_id) VALUES
(1, 1, '2023-01-15', 1000.00, 1),
(2, 1, '2023-02-15', 500.00, 2),
(3, 2, '2023-03-15', 2000.00, 1),
(4, 2, '2023-04-15', 600.00, 2),
(5, 3, '2023-05-15', 1500.00, 1),
(6, 4, '2023-06-15', 2500.00, 1),
(7, 5, '2023-07-15', 3000.00, 1),
(8, 5, '2023-08-15', 700.00, 2),
(9, 6, '2023-09-15', 3500.00, 1),
(10, 6, '2023-10-15', 800.00, 2),
(11, 7, '2023-11-15', 4000.00, 1),
(12, 8, '2023-12-15', 900.00, 2),
(13, 9, '2024-01-15', 4500.00, 1),
(14, 10, '2024-02-15', 1000.00, 2),
(15, 11, '2024-03-15', 5000.00, 1),
(16, 12, '2024-04-15', 1100.00, 2),
(17, 13, '2024-05-15', 5500.00, 1),
(18, 14, '2024-06-15', 1200.00, 2),
(19, 15, '2024-07-15', 6000.00, 1),
(20, 16, '2024-08-15', 1300.00, 2),
(21, 1, '2023-03-15', 1200.00, 3),
(22, 2, '2023-05-15', 1300.00, 3),
(23, 3, '2023-07-15', 1400.00, 3),
(24, 4, '2023-09-15', 1500.00, 3),
(25, 5, '2023-11-15', 1600.00, 3),
(26, 6, '2024-01-15', 1700.00, 3),
(27, 7, '2024-03-15', 1800.00, 3),
(28, 8, '2024-05-15', 1900.00, 3),
(29, 9, '2024-07-15', 2000.00, 3),
(30, 10, '2024-09-15', 2100.00, 3);

SET IDENTITY_INSERT transactions OFF;

-- Insert data into purpose_codes
SET IDENTITY_INSERT purpose_codes ON;

INSERT INTO purpose_codes (purpose_code_id, purpose_code, description) VALUES
(1, 'Trade Payment', 'Payment for trade transactions'),
(2, 'Goods Payment', 'Payment for goods'),
(3, 'Service Payment', 'Payment for services'),
(4, 'Consulting Fee', 'Fee for consulting services'),
(5, 'Equipment Purchase', 'Purchase of equipment'),
(6, 'Advertising Fee', 'Fee for advertising services'),
(7, 'Software License', 'Payment for software license'),
(8, 'Investment Fee', 'Fee for investment services');

SET IDENTITY_INSERT purpose_codes OFF;

-- Insert data into fedwire_messages
SET IDENTITY_INSERT fedwire_messages ON;

INSERT INTO fedwire_messages (fedwire_id, letter_id, type_subtype_code, amount, sender_bank_id, receiver_bank_id, beneficiary_id, originator_id, reference_code, purpose_code_id) VALUES
(1, 1, '1510', 100000.00, 1, 2, 2, 1, 'REF123', 1),
(2, 2, '1510', 200000.00, 3, 4, 4, 3, 'REF456', 2),
(3, 3, '1520', 150000.00, 5, 6, 6, 5, 'REF789', 3),
(4, 4, '1520', 250000.00, 7, 8, 8, 7, 'REF012', 4),
(5, 5, '1530', 300000.00, 9, 10, 10, 9, 'REF345', 5),
(6, 6, '1530', 350000.00, 11, 12, 12, 11, 'REF678', 6),
(7, 7, '1540', 400000.00, 13, 14, 14, 13, 'REF901', 7),
(8, 8, '1540', 450000.00, 15, 16, 16, 15, 'REF234', 4),
(9, 9, '1550', 500000.00, 1, 2, 2, 1, 'REF567', 8),
(10, 10, '1550', 550000.00, 3, 4, 4, 3, 'REF890', 1),
(11, 11, '1560', 600000.00, 5, 6, 6, 5, 'REF1234', 2),
(12, 12, '1560', 650000.00, 7, 8, 8, 7, 'REF5678', 3),
(13, 13, '1570', 700000.00, 9, 10, 10, 9, 'REF9012', 4),
(14, 14, '1570', 750000.00, 11, 12, 12, 11, 'REF3456', 5),
(15, 15, '1580', 800000.00, 13, 14, 14, 13, 'REF7890', 6),
(16, 16, '1580', 850000.00, 15, 16, 16, 15, 'REF12345', 7);

SET IDENTITY_INSERT fedwire_messages OFF;

-- Insert data into swift_xml_messages
SET IDENTITY_INSERT swift_xml_messages ON;

INSERT INTO swift_xml_messages (swift_id, letter_id, message_id, creation_date, instructed_amount, currency, creditor_id, debtor_id, end_to_end_id) VALUES
(1, 1, 'MSG123', '2023-01-01T10:00:00', 100000.00, 'USD', 2, 1, 'E2E123'),
(2, 2, 'MSG456', '2023-02-01T10:00:00', 200000.00, 'USD', 4, 3, 'E2E456'),
(3, 3, 'MSG789', '2023-03-01T10:00:00', 150000.00, 'USD', 6, 5, 'E2E789'),
(4, 4, 'MSG012', '2023-04-01T10:00:00', 250000.00, 'USD', 8, 7, 'E2E012'),
(5, 5, 'MSG345', '2023-05-01T10:00:00', 300000.00, 'USD', 10, 9, 'E2E345'),
(6, 6, 'MSG678', '2023-06-01T10:00:00', 350000.00, 'USD', 12, 11, 'E2E678'),
(7, 7, 'MSG901', '2023-07-01T10:00:00', 400000.00, 'USD', 14, 13, 'E2E901'),
(8, 8, 'MSG234', '2023-08-01T10:00:00', 450000.00, 'USD', 16, 15, 'E2E234'),
(9, 9, 'MSG567', '2023-09-01T10:00:00', 500000.00, 'USD', 1, 2, 'E2E567'),
(10, 10, 'MSG890', '2023-10-01T10:00:00', 550000.00, 'USD', 3, 4, 'E2E890'),
(11, 11, 'MSG1234', '2023-11-01T10:00:00', 600000.00, 'USD', 5, 6, 'E2E1234'),
(12, 12, 'MSG5678', '2023-12-01T10:00:00', 650000.00, 'USD', 7, 8, 'E2E5678'),
(13, 13, 'MSG9012', '2024-01-01T10:00:00', 700000.00, 'USD', 9, 10, 'E2E9012'),
(14, 14, 'MSG3456', '2024-02-01T10:00:00', 750000.00, 'USD', 11, 12, 'E2E3456'),
(15, 15, 'MSG7890', '2024-03-01T10:00:00', 800000.00, 'USD', 13, 14, 'E2E7890'),
(16, 16, 'MSG12345', '2024-04-01T10:00:00', 850000.00, 'USD', 15, 16, 'E2E12345');

SET IDENTITY_INSERT swift_xml_messages OFF;