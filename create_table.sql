CREATE DATABASE concurrent_repartition;
USE concurrent_repartition;

CREATE TABLE IF NOT EXISTS store_sales (
  txn_id   INT,
  item_id  INT,
  sales    DOUBLE) 
PARTITIONED BY (
  sales_date STRING,
  store_id INT)
STORED AS PARQUET;

