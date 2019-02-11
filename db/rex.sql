DROP TABLE transactions;
DROP TABLE merchants;
DROP TABLE tags;

CREATE TABLE tags(
  id SERIAL4 PRIMARY KEY ,
  tag_name_str VARCHAR(255),
  budget_num NUMERIC(15,2)
);

CREATE TABLE merchants(
  id SERIAL4 PRIMARY KEY ,
  merchant_name_str VARCHAR(255)
);

CREATE TABLE transactions(
  id SERIAL4 PRIMARY KEY,
  tag_id_int INT4 REFERENCES tags(id) ON DELETE CASCADE,
  merchant_id_int INT4 REFERENCES merchants(id) ON DELETE CASCADE,
  amount_num NUMERIC(15,2)
);
