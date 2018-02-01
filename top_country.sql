SELECT BillingCountry as "Country", MAX(Total) as "Total Sales"
FROM (SELECT SUM(Invoice.Total)as Total, Invoice.BillingCountry
FROM Invoice 
GROUP BY Invoice.BillingCountry)