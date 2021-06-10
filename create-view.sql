
CREATE VIEW rock AS 
SELECT track.name FROM track
JOIN genre ON genre.genre_id = track.genre_id
WHERE genre.name ILIKE 'Rock';

SELECT * FROM rock;

CREATE VIEW classical_count AS 
SELECT count(*) from track
JOIN track_id ON track.track_id = playlist_track.track_id
WHERE playlist_id = 'Classical';

-- Didnt quite get the last one working