SELECT
    Customer.CustomerId,
    MAX(Invoice.InvoiceDate) AS MaxInvoiceDate
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Customer.CustomerId
ORDER BY Customer.CustomerId ASC;