SELECT unit_price FROM invoice_line
WHERE unit_price IN (SELECT unit_price FROM invoice_line
                     Where unit_price > 0.99);

SELECT * FROM playlist_track
WHERE playlist_id IN (SELECT playlist_id FROM playlist 
               WHERE name = 'Music');

SELECT * from playlist_track 
WHERE playlist_id IN (SELECT playlist_id FROM playlist
                      WHERE playlist_id = 5);

SELECT * FROM track 
WHERE genre_id IN (SELECT genre_id FROM genre 
                   WHERE name = 'Comedy');

SELECT * FROM track 
WHERE album_id IN (SELECT album_id FROM album
                   WHERE title = 'Fireball');

SELECT * FROM track
WHERE album_id IN (SELECT album_id FROM album WHERE artist_id IN
(SELECT artist_id FROM artist WHERE name = 'Queen' ))
;