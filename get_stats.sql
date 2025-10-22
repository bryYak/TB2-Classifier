-- database: c:\Users\shado\Documents\Development\TB2 Project\data.sqlite3

-- Use the ▷ button in the top right corner to run the entire file.

SELECT 
placements.id,
holes.mirrored_hole_id,
holes.x,
holes.y,
ROW_NUMBER() OVER (ORDER BY placements.id) - 1 AS row_num
FROM placements
INNER JOIN holes
ON placements.id = holes.id
WHERE layout_id = 10