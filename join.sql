SELECT * FROM invoice_line
WHERE unit_price > 0.99;

SELECT * FROM invoice;
SELECT * FROM invoice_line;

SELECT invoice_date, first_name, last_name, total FROM customer
JOIN invoice ON invoice.customer_id = customer.customer_id;

SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name FROM customer
JOIN employee on employee.employee_id = customer.support_rep_id;

SELECT title, name FROM artist
JOIN album ON artist.artist_id = album.artist_id;

SELECT playlist_track_id, name FROM playlist
JOIN playlist_track ON playlist_track.playlist_id = playlist.playlist_id 
WHERE name ILIKE 'music';

SELECT name FROM track
JOIN playlist_track ON track.track_id = playlist_track.track_id
WHERE playlist_id = 5;

SELECT track.name, playlist.name FROM playlist_track
JOIN track ON track.track_id =  playlist_track.track_id
JOIN playlist ON playlist_track.playlist_id = playlist.playlist_id;

SELECT track.name, album.title FROM track
JOIN album ON track.album_id = album.album_id
JOIN genre ON genre.genre_id = track.genre_id
WHERE genre.name ILIKE 'Alternative & Punk';