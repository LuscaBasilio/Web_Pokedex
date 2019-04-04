USE WEB_POKEDEX

INSERT INTO LOCAIS VALUES('Grassland'), ('Forest'), ('Water''s-edge'), ('Sea'), ('Cave'), ('Mountain'), ('Rough-terrain'), ('Urban'),
('Rare');

INSERT INTO POKEMON VALUES ('Nº004', 'Charmander', 'Lizard Pokémon', 'From the time it is born,
a flame burns at the tip of it''s tail. It''s life would end if the flame were to go out', 
'HT: 0,60 M', 'WT: 8,5 kg', 9), ('Nº005', 'Charmeleon', 'Flare Pokémon', 'It lashes about with it''s 
tail to knock down it''s foe. It then tears up the fallen opponent with sharp claws', 'HT: 0,94 M', 'WT: 19 kg', 9);

INSERT INTO TIPOS VALUES ('Grass'), ('Fire'), ('Water'), ('Rock'), ('Ground'), ('Normal'), ('Fighter'), ('Flying'), ('Electric'), 
('Ghost'), ('Dark'), ('Bug'), ('Psychic'), ('Poison'), ('Steel'), ('Ice'), ('Dragon');

INSERT INTO TIPO_POKEMON VALUES (1, 2), (2, 2);

SELECT * FROM POKEMON
SELECT * FROM TIPOS
SELECT * FROM TIPO_POKEMON