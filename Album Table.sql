-- Modify the Duration column data type
ALTER TABLE Album
ALTER COLUMN Duration VARCHAR(10);

-- Update the MusicGenreCodeID and RecordLabelID columns
UPDATE Album
SET MusicGenreCodeID = 
    CASE
        WHEN AlbumID = 1 THEN 3
        WHEN AlbumID = 2 THEN 4
        WHEN AlbumID = 3 THEN 2
        WHEN AlbumID = 4 THEN 1
        WHEN AlbumID = 5 THEN 5
        WHEN AlbumID = 6 THEN 3
        WHEN AlbumID = 7 THEN 2
        WHEN AlbumID = 8 THEN 4
        WHEN AlbumID = 9 THEN 1
        WHEN AlbumID = 10 THEN 5
    END,
    RecordLabelID = 
    CASE
        WHEN AlbumID = 1 THEN 2
        WHEN AlbumID = 2 THEN 1
        WHEN AlbumID = 3 THEN 4
        WHEN AlbumID = 4 THEN 3
        WHEN AlbumID = 5 THEN 2
        WHEN AlbumID = 6 THEN 1
        WHEN AlbumID = 7 THEN 4
        WHEN AlbumID = 8 THEN 3
        WHEN AlbumID = 9 THEN 2
        WHEN AlbumID = 10 THEN 4
    END
WHERE AlbumID IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
