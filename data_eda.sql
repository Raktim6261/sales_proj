SELECT * FROM sales.customers;

SELECT * FROM sales.transactions;

SELECT * FROM sales.markets;

SELECT count(*) FROM sales.transactions;

SELECT count(*) FROM sales.customers;

SELECT * FROM sales.transactions limit 5;

SELECT * FROM sales.transactions where market_code="Mark001";

SELECT count(*) FROM sales.transactions where market_code="Mark001";

SELECT * FROM sales.transactions where currency="USD";

SELECT sales.transactions.*, sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date

SELECT sales.transactions.*, sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year = 2020

SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year = 2020

SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date=sales.date.date where sales.date.year = 2020
and sales.transactions.market_code="Mark001";

SELECT distinct product_code FROM sales.transactions where market_code="Mark001"