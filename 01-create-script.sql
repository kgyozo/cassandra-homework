-- Fix the following Cassandra DDL, so that all queries from the files below can be executed without changes
 -- 02-upsert-readonly.sql and
 -- 03-query-readonly.sql

-- Create keyspace (press TAB for autocomplete in cqlsh)
CREATE KEYSPACE homework

-- Use keyspace
USE homework;

-- Fix the following table creation script so that the subsequent queries work as expected
-- The table contains both the invoice header and the invoice detail fields
CREATE table invoice
(
  -- header fields
  invoice_id text,
  invoice_date date,
  invoice_address text,
  -- detail fields
  line_id int,
  article_name text,
  article_price decimal
);
