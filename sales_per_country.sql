SELECT I.BillingCountry as "Country", SUM(I.Total) as "Total Sales"
FROM Invoice I
GROUP BY I.BillingCountry
