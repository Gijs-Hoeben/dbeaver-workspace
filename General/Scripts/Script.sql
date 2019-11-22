SELECT Title, ArtistId FROM Album;

SELECT DISTINCT ArtistId FROM Album;

SELECT Album.AlbumId, Album.Title, Artist.Name
FROM Album JOIN Artist ON album.ArtistId = Artist.ArtistId
WHERE Album.ArtistId = 8;

SELECT *
FROM Customer
WHERE Country= 'USA';

SELECT *
FROM Customer
WHERE Country= 'USA' AND LastName LIKE 'G%' AND FirstName LIKE '%n';

SELECT *
FROM Customer
WHERE State = 'ON' AND LastName LIKE '%w%';

SELECT SUM(Total) AS 'TotalInvoices', COUNT(Total) AS 'FromUSA', AVG(Total) AS 'AvarageTotalInvoices'
FROM Invoice
WHERE (BillingCountry = 'USA' OR BillingCountry = 'Canada') AND NOT BillingCity = 'New York';

SELECT Customer.FirstName, Customer.LastName, invoice.BillingAddress AS 'CustomerAdres'
FROM Invoice JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
WHERE Invoice.InvoiceId = 1;

SELECT customer.FirstName, customer.LastName, Track.Name, invoiceLine.UnitPrice
FROM InvoiceLine
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
JOIN Customer ON Customer.CustomerId = invoice.CustomerId
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
WHERE invoiceline.InvoiceId = 4;

SELECT playlist.Name, track.Name, track.Milliseconds
FROM Playlist
JOIN PlaylistTrack ON playlist.PlaylistId = playlistTrack.PlaylistId
JOIN Track ON playlistTrack.TrackId = track.TrackId
WHERE playlist.Name = 'Heavy Metal Classic';

SELECT e.FirstName, e.LastName, min(e.BirthDate)
FROM Employee as e;

SELECT e.FirstName, e.LastName, e.BirthDate
FROM Employee as e
WHERE BirthDate > '1970-05-01';

SELECT track.Name, genre.Name
FROM Track
JOIN Genre ON Genre.GenreId = track.GenreId
WHERE genre.GenreId = 6;

SELECT track.Name AS 'Trackname', genre.Name AS 'Genrename', artist.Name AS 'Artistname'
FROM Track
JOIN Genre ON Genre.GenreId = track.GenreId
JOIN Album ON album.AlbumId = track.AlbumId
JOIN Artist ON artist.ArtistId = album.ArtistId
WHERE genre.GenreId = 6;