CREATE PROCEDURE sp_search_letters_by_bank @bank_name VARCHAR(255) AS BEGIN
SELECT
    loc.letter_id,
    loc.amount,
    loc.issue_date,
    loc.expiry_date,
    i.name AS issuing_bank,
    ib.name AS advising_bank,
    a.street,
    a.city,
    a.state,
    a.country,
    p.name AS applicant_name,
    b.name AS beneficiary_name
FROM
    letters_of_credit loc
    JOIN institutions i ON loc.issuing_bank_id = i.institution_id
    JOIN institutions ib ON loc.advising_bank_id = ib.institution_id
    JOIN parties p ON loc.applicant_id = p.party_id
    JOIN parties b ON loc.beneficiary_id = b.party_id
    JOIN addresses a ON p.address_id = a.address_id
WHERE
    i.name = @bank_name
    OR ib.name = @bank_name;

END;