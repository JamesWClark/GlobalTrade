-- Contact information for institutions
CREATE VIEW institutions_contact_info AS
SELECT
    i.name,
    a.street,
    a.city,
    a.state,
    a.country,
    c.contact_person,
    c.phone_number,
    c.email
FROM
    institutions i
    JOIN addresses a ON i.address_id = a.address_id
    JOIN contacts c ON i.contact_id = c.contact_id;


-- Contact information for parties
CREATE VIEW parties_contact_info AS
SELECT
    r.role,
    p.name,
    a.street,
    a.city,
    a.state,
    a.country,
    c.contact_person,
    c.phone_number,
    c.email
FROM
    parties p
    JOIN addresses a ON p.address_id = a.address_id
    JOIN contacts c ON p.contact_id = c.contact_id
    JOIN party_roles r ON p.role_id = r.role_id;


-- Count how many letters each applicant has by status
CREATE VIEW count_letter_status_by_party AS
SELECT
    p.name,
    COUNT(CASE WHEN s.status = 'Active' THEN 1 END) AS num_active,
    COUNT(CASE WHEN s.status = 'Expired' THEN 1 END) AS num_expired,
    COUNT(CASE WHEN s.status = 'Cancelled' THEN 1 END) AS num_cancelled
FROM
    letters_of_credit l
    JOIN letter_statuses s ON l.letter_status_id = s.letter_status_id
    JOIN letter_types t ON l.letter_type_id = t.letter_type_id
    JOIN parties p ON l.applicant_id = p.party_id
GROUP BY
    p.name;