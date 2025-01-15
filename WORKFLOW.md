# Workflow

## 1. **Setup Parties, Institutions, and Roles**

* **Buyer (Applicant):**
  * A `party` is created for the buyer, linking to their contact and address. Their `role` is set as "Applicant."
* **Seller (Beneficiary):**
  * A `party` is created for the seller, linking to their contact and address. Their `role` is set as "Beneficiary."
* **Banks:**
  * The buyer's bank (Issuing Bank) and the seller's bank (Advising Bank) are created as `institutions` with their respective `contacts` and `addresses`.

## 2. **Initiate a Letter of Credit**

* The buyer approaches their bank (Issuing Bank) to create a **Letter of Credit (LC)** as a guarantee to the seller.
* An entry is made in the `letters_of_credit` table:
  * `applicant_id`: The buyer's party ID.
  * `beneficiary_id`: The seller's party ID.
  * `issuing_bank_id`: The ID of the buyer's bank.
  * `advising_bank_id`: The ID of the seller's bank.
  * `amount`: The total transaction value.
  * `issue_date`: The date the LC is issued.
  * `expiry_date`: The date until which the LC is valid.
  * `letter_type_id`: Indicates the type of LC (e.g., "Irrevocable").
  * `letter_status_id`: Indicates the initial status (e.g., "Open").

### 3. **Seller Ships Goods**

* The seller ships the goods to the buyer and collects necessary documents (e.g., bill of lading, commercial invoice).
* These documents are submitted to the seller’s bank (Advising Bank).
* Entries are made in the `documents` table for each submitted document:
  * `letter_id`: Links the documents to the corresponding LC.
  * `document_type_id`: Specifies the type of document (e.g., "Bill of Lading").
  * `document_path`: Points to the stored location of the document.

## 4. **Advising Bank Sends Documents to Issuing Bank**

* The Advising Bank verifies the documents and forwards them to the Issuing Bank for payment authorization.
* A transaction is logged in the `transactions` table:
  * `letter_id`: Links the transaction to the LC.
  * `transaction_date`: Date of the transaction.
  * `amount`: Amount for this transaction.
  * `transaction_type_id`: Specifies the type of transaction (e.g., "Document Submission").

## 5. **Issuing Bank Processes Payment**

* Upon approval, the Issuing Bank releases payment to the Advising Bank, which pays the seller.
* A `fedwire_messages` or `swift_xml_messages` entry is created to record the electronic transfer:
  * `letter_id`: Links the payment to the LC.
  * `sender_bank_id`: The ID of the Issuing Bank.
  * `receiver_bank_id`: The ID of the Advising Bank.
  * `beneficiary_id`: The seller's party ID.
  * `originator_id`: The buyer's party ID.
  * `amount`: The transferred amount.
  * `currency`: The transaction currency.
  * `reference_code`: A unique reference for tracking.
* This payment transaction is also logged in the `transactions` table.

## 6. **Update LC Status**

* Once payment is made, the LC status is updated in the `letters_of_credit` table:
  * `letter_status_id`: Changed to a status like "Completed."

## 7. **Optional: Extensions or Guarantees**

* If the LC needs to be extended, an entry is added to the `standby_letters_of_credit` table.
* If the LC involves a guarantee, an entry is made in the `guarantees` table.

## 8. **Audit and Reporting**

* Relevant data can be extracted for reporting purposes, such as:
  * LC statuses.
  * Transaction history.
  * Document compliance.
  * Payment records.
