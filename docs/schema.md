# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
first_name      | string    | not null
last_name       | string    | not null
email           | string    | not null, indexed, unique
phone           | string    | not null

## loans
column name     | data type | details
----------------|-----------|-----------------------
amount          | decimal   | 2-point precision, not null
payment_freq    | integer   | not null
term_length     | integer   |
loaner_id       | string    | not null, indexed, foreign key
loanee_id       | string    | not null, indexed, foreign key
application_id  | integer   | not null, indexed, foreign key, unique


## payment
column name     | data type | details
----------------|-----------|-----------------------
created_at      | timestamp | not null
amount          | decimal   | 2-point precision, not null
loan_id         | integer   | not null, indexed, foreign key
status          | string    | not null


## application
column name     | data type | details
----------------|-----------|-----------------------
created_at      | timestamp | not null
loaner_id       | string    | not null, indexed, foreign key
applicant_id    | string    | not null, indexed, foreign key
status          | string    | not null, (draft, pending, approved, denied)
