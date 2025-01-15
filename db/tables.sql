CREATE DATABASE GlobalTrade;

USE GlobalTrade;

CREATE TABLE addresses (
    address_id INT IDENTITY(1,1) PRIMARY KEY,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100)
);

CREATE TABLE contacts (
    contact_id INT IDENTITY(1,1) PRIMARY KEY,
    contact_person VARCHAR(255),
    phone_number VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE institutions (
    institution_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address_id INT,
    contact_id INT,
    FOREIGN KEY (address_id) REFERENCES addresses(address_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

CREATE TABLE party_roles (
    role_id INT IDENTITY(1,1) PRIMARY KEY,
    role VARCHAR(50) UNIQUE
);

CREATE TABLE parties (
    party_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address_id INT,
    contact_id INT,
    role_id INT,
    FOREIGN KEY (address_id) REFERENCES addresses(address_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (role_id) REFERENCES party_roles(role_id)
);

CREATE TABLE letter_types (
    letter_type_id INT IDENTITY(1,1) PRIMARY KEY,
    type VARCHAR(50) UNIQUE
);

CREATE TABLE letter_statuses (
    letter_status_id INT IDENTITY(1,1) PRIMARY KEY,
    status VARCHAR(50) UNIQUE
);

CREATE TABLE letters_of_credit (
    letter_id INT IDENTITY(1,1) PRIMARY KEY,
    applicant_id INT NOT NULL,
    beneficiary_id INT NOT NULL,
    issuing_bank_id INT NOT NULL,
    advising_bank_id INT,
    amount DECIMAL(15, 2) NOT NULL,
    issue_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    letter_type_id INT,
    letter_status_id INT,
    FOREIGN KEY (applicant_id) REFERENCES parties(party_id),
    FOREIGN KEY (beneficiary_id) REFERENCES parties(party_id),
    FOREIGN KEY (issuing_bank_id) REFERENCES institutions(institution_id),
    FOREIGN KEY (advising_bank_id) REFERENCES institutions(institution_id),
    FOREIGN KEY (letter_type_id) REFERENCES letter_types(letter_type_id),
    FOREIGN KEY (letter_status_id) REFERENCES letter_statuses(letter_status_id)
);

CREATE TABLE standby_letters_of_credit (
    standby_letter_id INT IDENTITY(1,1) PRIMARY KEY,
    letter_id INT NOT NULL,
    extension_date DATE,
    fee DECIMAL(10, 2),
    FOREIGN KEY (letter_id) REFERENCES letters_of_credit(letter_id)
);

CREATE TABLE guarantees (
    guarantee_id INT IDENTITY(1,1) PRIMARY KEY,
    letter_id INT NOT NULL,
    guarantee_amount DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (letter_id) REFERENCES letters_of_credit(letter_id)
);

CREATE TABLE document_types (
    document_type_id INT IDENTITY(1,1) PRIMARY KEY,
    document_type VARCHAR(50) UNIQUE,
    description VARCHAR(255)
);

CREATE TABLE documents (
    document_id INT IDENTITY(1,1) PRIMARY KEY,
    letter_id INT NOT NULL,
    document_type_id INT,
    document_path VARCHAR(255),
    FOREIGN KEY (letter_id) REFERENCES letters_of_credit(letter_id),
    FOREIGN KEY (document_type_id) REFERENCES document_types(document_type_id)
);

CREATE TABLE transaction_types (
    transaction_type_id INT IDENTITY(1,1) PRIMARY KEY,
    transaction_type VARCHAR(50) UNIQUE,
    description VARCHAR(255)
);

CREATE TABLE transactions (
    transaction_id INT IDENTITY(1,1) PRIMARY KEY,
    letter_id INT NOT NULL,
    transaction_date DATE NOT NULL,
    amount DECIMAL(15, 2) NOT NULL,
    transaction_type_id INT,
    FOREIGN KEY (letter_id) REFERENCES letters_of_credit(letter_id),
    FOREIGN KEY (transaction_type_id) REFERENCES transaction_types(transaction_type_id)
);

CREATE TABLE purpose_codes (
    purpose_code_id INT IDENTITY(1,1) PRIMARY KEY,
    purpose_code VARCHAR(50) UNIQUE,
    description VARCHAR(255)
);

CREATE TABLE fedwire_messages (
    fedwire_id INT IDENTITY(1,1) PRIMARY KEY,
    letter_id INT NOT NULL,
    type_subtype_code VARCHAR(10),
    amount DECIMAL(15, 2),
    sender_bank_id INT,
    receiver_bank_id INT,
    beneficiary_id INT,
    originator_id INT,
    reference_code VARCHAR(50),
    purpose_code_id INT,
    FOREIGN KEY (letter_id) REFERENCES letters_of_credit(letter_id),
    FOREIGN KEY (sender_bank_id) REFERENCES institutions(institution_id),
    FOREIGN KEY (receiver_bank_id) REFERENCES institutions(institution_id),
    FOREIGN KEY (beneficiary_id) REFERENCES parties(party_id),
    FOREIGN KEY (originator_id) REFERENCES parties(party_id),
    FOREIGN KEY (purpose_code_id) REFERENCES purpose_codes(purpose_code_id)
);

CREATE TABLE swift_xml_messages (
    swift_id INT IDENTITY(1,1) PRIMARY KEY,
    letter_id INT NOT NULL,
    message_id VARCHAR(50),
    creation_date DATETIME,
    instructed_amount DECIMAL(15, 2),
    currency VARCHAR(3),
    creditor_id INT,
    debtor_id INT,
    end_to_end_id VARCHAR(50),
    FOREIGN KEY (letter_id) REFERENCES letters_of_credit(letter_id),
    FOREIGN KEY (creditor_id) REFERENCES parties(party_id),
    FOREIGN KEY (debtor_id) REFERENCES parties(party_id)
);