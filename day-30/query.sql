SELECT
    Customer.FirstName,
    Customer.LastName,
    Invoice.InvoiceId
FROM Customer
LEFT JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
WHERE Invoice.CustomerId IS NULL
ORDER BY Customer.CustomerId;