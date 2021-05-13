CREATE TABLE Publisher(
	Publisher_ID int ,
	P_Name varchar2(500),
	description varchar2(500),
	Original_name varchar2(500),
	primary KEY(Publisher_ID)
);

CREATE TABLE Genres(
	Genres_ID int,
	G_Name varchar2(500),
	primary KEY(Genres_ID)
);

CREATE TABLE Users(
	User_ID int ,
	Username varchar2(500),
	Password varchar2(500),
	Email varchar2(500),
	primary KEY(User_ID)
);

CREATE TABLE Pages(
	comics_id number,
	page number,
	Url varchar2(500)
);

CREATE TABLE Series(
	Series_ID int ,
	S_Name varchar2(500),
	Publisher_ID number,
	Year number,
	Original_name varchar2(500),
	posterurl varchar(2000),
	primary KEY(Series_ID),
	constraint FKPublisher_ID
	     Foreign Key(Publisher_ID)
	     References Publisher (Publisher_ID)
);


CREATE TABLE Comics(
	Comics_ID int ,
	C_Name varchar2(500),
	Publisher_ID number,
	Series_ID number,
	Original_name varchar2(500),
	posterurl varchar2(500),
	primary KEY(Comics_ID),
	constraint FK1Publisher_ID
	     Foreign Key(Publisher_ID)
	     References Publisher (Publisher_ID),
	constraint FKSeries_ID
	     Foreign Key(Series_ID)
	     References Series (Series_ID)
);

CREATE TABLE User_List(
	User_ID number,
	Series_ID number,
	Last_chapter number,
	constraint FKUser_ID
	     Foreign Key(User_ID)
	     References Users (User_ID),
	constraint FK1Series_ID
	     Foreign Key(Series_ID)
	     References Series (Series_ID),
	constraint FKLast_chapter
	     Foreign Key(Last_chapter)
	     References Comics (Comics_id)
);

CREATE TABLE seria_genres(
	series_id number,
	genre_id int
);