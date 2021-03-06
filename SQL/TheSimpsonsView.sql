-- A Simpsons Episode View
CREATE VIEW [Episode Overview] AS
select Episode.Episode_Code, Episode.Title, Writer.Writer, Episode.Season, Episode.Number_In_Season,  Character.Normalized as 'Character', Location.Normalized as 'Location', Script_Load.spoken_Words from Episode
INNER JOIN Script_Load on Episode.id = Script_Load.Episode_ID
LEFT JOIN Character on Script_Load.character_id = Character.ID
LEFT JOIN Location on Script_Load.location_id = Location.ID
LEFT JOIN Writer on Episode.Episode_Code = Writer.Episode_Code
WHERE Episode.Number_In_Season in (1,2,3,4,5,6,7,8,9,10)
AND character.normalized LIKE '%simpson%'


-- select * from [Episode Overview]