CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) UNIQUE NOT NULL	
);

CREATE TABLE IF NOT EXISTS Singers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL	
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL,
	year DATE NOT NULL	
);

CREATE TABLE IF NOT EXISTS Songs (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL,
	duration NUMERIC(5,2),
	album_id INTEGER REFERENCES Albums (id) 	
);

CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL,
	year DATE NOT NULL		
);

CREATE TABLE IF NOT EXISTS SingersGenres(
	id SERIAL PRIMARY KEY,
	singer_id INTEGER REFERENCES Singers (id),
	genre_id INTEGER REFERENCES Genres (id)	
);

CREATE TABLE IF NOT EXISTS SingersAlbums (
	id SERIAL PRIMARY KEY,
	singer_id INTEGER REFERENCES Singers (id),
	album_id INTEGER REFERENCES Albums (id)	
);

CREATE TABLE IF NOT EXISTS CollectionsSongs (
	id SERIAL PRIMARY KEY,
	collection_id INTEGER REFERENCES Collections (id),
	song_id INTEGER REFERENCES Songs (id)	
);
