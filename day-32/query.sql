SELECT
    Invoice.InvoiceId,
    COUNT(InvoiceLine.InvoiceLineId) AS LineCount
FROM Invoice
LEFT JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId
ORDER BY Invoice.InvoiceId;