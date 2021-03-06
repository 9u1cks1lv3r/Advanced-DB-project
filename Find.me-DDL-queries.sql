CREATE TABLE User (
	user_Id INTEGER PRIMARY KEY,
	login TEXT,
	email TEXT,
    password TEXT
);

CREATE TABLE Blog (
	blog_Id INTEGER PRIMARY KEY,
	content TEXT,
    date TEXT
);

CREATE TABLE Profile (
	profile_Id INTEGER PRIMARY KEY,
	full_name TEXT,
	age INTEGER,
    about_me TEXT, 
    contacts TEXT, 
    rating INTEGER
);

CREATE TABLE Review (
	review_Id INTEGER PRIMARY KEY,
	content TEXT,
	helpfullness TEXT
);

CREATE TABLE Landlord (
	landlord_Id INTEGER PRIMARY KEY,
	full_name TEXT, 
    contacts TEXT, 
    rating INTEGER
);

CREATE TABLE Housing (
	housing_Id INTEGER PRIMARY KEY,
	title TEXT,
	city TEXT,
    description TEXT, 
    rent_type TEXT, 
    housing_type TEXT,
    price INTEGER,
    year INTEGER,
    ceiling_height INTEGER,
    material TEXT,
    floorOfHousing INTEGER,
    numberOfFloor INTEGER,
    bathroom INTEGER,
    internet BOOL,
    balcony INTEGER
);