# Future Work

## 1. Compliance and Regulations

* **Sanctions and Blacklists:**
  * Add a table to track entities (parties, institutions) flagged for sanctions or blacklist violations.
    ```sql
    CREATE TABLE compliance_flags (
        flag_id INT IDENTITY(1,1) PRIMARY KEY,
        entity_id INT NOT NULL, -- Party or Institution
        entity_type VARCHAR(20) NOT NULL, -- 'Party' or 'Institution'
        reason VARCHAR(255),
        flagged_date DATE NOT NULL
    );
    ```
  * This ensures transactions can be screened for regulatory compliance.
* **Audit Logs:**
  * Maintain a separate `audit_logs` table to record all changes to sensitive entities like `letters_of_credit` or `transactions`.

    ```sql
    CREATE TABLE audit_logs (
        log_id INT IDENTITY(1,1) PRIMARY KEY,
        entity_name VARCHAR(50) NOT NULL,
        entity_id INT NOT NULL,
        action VARCHAR(50) NOT NULL, -- e.g., INSERT, UPDATE, DELETE
        changed_by VARCHAR(100),
        changed_at DATETIME DEFAULT GETDATE()
    );
    ```

## 2. Risk management

* **Risk Scoring:**
  * Add a `risk_scores` table to capture potential risks associated with a transaction, party, or institution.
    ```sql
    CREATE TABLE risk_scores (
        risk_id INT IDENTITY(1,1) PRIMARY KEY,
        entity_id INT NOT NULL,
        entity_type VARCHAR(20), -- 'Party', 'Institution', 'Transaction'
        score DECIMAL(5, 2) NOT NULL, -- Risk score (e.g., 0-100 scale)
        assessed_date DATE NOT NULL,
        comments VARCHAR(255)
    );
    ```

## 3. Multi-Currency Support

* While `swift_xml_messages` table has a `currency` column, extend multi-currency support across other financial tables, such as `transactions` and `fedwire_messages`.
* Add a `currencies` table to standardize currency codes and exchange rates:
  ```sql
  CREATE TABLE currencies (
      currency_id INT IDENTITY(1,1) PRIMARY KEY,
      currency_code CHAR(3) UNIQUE NOT NULL,
      description VARCHAR(50),
      exchange_rate DECIMAL(15, 6), -- Exchange rate to base currency
      effective_date DATE NOT NULL
  );
  ```

## 4. Enhanced Document Management

* **Document Versioning:**
  * Allow multiple versions of the same document type to be tracked.
    ```sql
    ALTER TABLE documents ADD version INT DEFAULT 1;
    ```
* **Metadata:**
  * Add metadata fields for documents, such as upload date, size, and checksum for integrity verification.
    ```sql
    ALTER TABLE documents 
    ADD upload_date DATETIME DEFAULT GETDATE(),
        file_size INT,
        checksum VARCHAR(64);
    ```

## **5. More Detailed Transaction Tracking**

* **Transaction States:**
  * Add a state column to the `transactions` table to track processing stages (e.g., "Pending," "Completed," "Failed").
    ```sql
    ALTER TABLE transactions ADD state VARCHAR(20) DEFAULT 'Pending';
    ```
* **Fees:**
  * Include fees associated with each transaction.
    ```sql
    ALTER TABLE transactions ADD fee DECIMAL(15, 2) DEFAULT 0.00;
    ```

## 6. Parties and Institutions Enhancements

* **Party-Role Relationships:**
  * Support multiple roles for the same party (e.g., a party could be both a seller and a guarantor).
    ```sql
    CREATE TABLE party_role_mapping (
        mapping_id INT IDENTITY(1,1) PRIMARY KEY,
        party_id INT NOT NULL,
        role_id INT NOT NULL,
        FOREIGN KEY (party_id) REFERENCES parties(party_id),
        FOREIGN KEY (role_id) REFERENCES party_roles(role_id)
    );
    ```
* **Institution Types:**
  * Distinguish between different types of institutions (e.g., Commercial Bank, Central Bank, Non-Bank Financial Institution).
    ```sql
    ALTER TABLE institutions ADD institution_type VARCHAR(50);
    ```

## 7. Performance Enhancements

* **Indexing:**
  * Consider adding composite indexes for queries that join across multiple columns, such as `letter_id`, `party_id`, or `institution_id`.
  * For example:
    ```sql
    CREATE INDEX idx_transactions_letter_date ON transactions (letter_id, transaction_date);
    ```

## 8. Workflow Tracking

* Add a `workflows` table to manage the overall state of LCs or transactions through their lifecycle.
  ```sql
  CREATE TABLE workflows (
      workflow_id INT IDENTITY(1,1) PRIMARY KEY,
      entity_id INT NOT NULL,
      entity_type VARCHAR(20), -- 'Letter', 'Transaction', etc.
      current_stage VARCHAR(50),
      assigned_to VARCHAR(100),
      updated_at DATETIME DEFAULT GETDATE()
  );
  ```
