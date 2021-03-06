# CSS 348 – ADVANCED DATABASE MANAGEMENT SYSTEMS
## Project name - Find.me

### Project goal and it's benefits:<br>
The project provides for the search for roommates, as well as the ability to search for rooms / apartments for rent. If you are a landlord then you can arrange a room / apartment for rent.


### Project functions and features:<br>
Search for roommates<br>
Find rooms / apartments for rent<br>
Renting out rooms / apartments for rent<br> 


### Type of the user-interface, programming language and database server:<br>
Web site on django/python/sqlite

## General

### Questions 
1. What kind of problem will solve our project? </br>
2. What features would be useful?</br>
3. What is the data source?</br>
4. What is the use scenario?</br>
5. What is the exact business problem?</br>
6. What is the GUI of your project? </br>
7. What actions are available from the server side? </br>
8. What actions are available from the user side?</br>
9. Who will use this application?</br>
10. What functionality will we have?</br>
11. What kind of libraries and frameworks will be used?</br>
12. How data will be validated?</br>
13. What devices will be supported?</br>
14. How can a user leave feedback?</br>
15. What kind of user protection measures will be provided?</br>
 
### Answers
1. Looking for neighbours for less pay for rent and looking for housing for rent</br>
2. Price of house</br>
   Address</br>
   Comment from inviter</br>
   Info about inviter</br>
   Comment from invited</br>
   Info about invited</br>
   House type</br>
   Floor</br>
   Size</br>
   Rooms</br>
   Renovation</br>
   Images</br>
   etc.</br>
3. Data of housings and peoples who look at for neighbours</br>
4. User will register to the app and then look at the neighbour or housing, </br> if the user is a landlord he/she can list housing. To feedback each user can estimate neighbours, housing, landlord, renter.
5. Application will help find a neighbour to live together to save money on rent payment. </br> 
   It also helps the landlords for renting housing.</br>
6. Website</br>
7. Tracking activity</br>
   Moderating data</br>
8. Look at for neighbour</br>
   Can be looked by neighbour</br>
   Can estimate neighbour</br>
   Can look a housing for rent</br>
   Can list a housing for rent</br>
   Can estimate renter</br>
   Сan estimate landlord</br>
   Can estimate a housing</br>
9. Anybody who want to find roommates </br>
10. Search neighbour</br>
    Search housing</br>
11. DB: SQLite</br>
    Front: HTML, CSS, JavaScript, Bootstrap, Jinja</br>
    Python: </br>
    >Back: Django, requests</br>
    >ML and Data Analysis: Pytorch, Numpy, Pandas, Matplotlib</br>
12. It will be validated by moderator</br>
13. Any type of devices that supports a browser</br>
14. Users can estimate his/her/its  neighbour,landlord, housing he/she/it lived, if the user is landlord can estimate renter.</br>
15. Registration and authentication</br>

## About Dataset
We are going to pars data from [krisha.kz](https://krisha.kz/arenda/). Our dataset will contains 5-7 thousands tuples.


## Explaining ER-diagram
Let us explain our ER-diagram from starting. When you are going to enter our application, you should sign up and fill in the following attributes: Login, Email, Password. So, you are in. Users can create profiles and search neighbors to live together. To create a Profile you should fill in characteristics such as Full name, Age, About me, Contacts, Rating (will be by default 0). And have the second choice which called Landlord. You can become Landlord and you should write about your full name and contacts. The landlord will also have been rated. You can give some housing to rent for people who want to live and earn money. The landlord can have two or more types of housing to rent. For example, Flat, Big House or room.  Every housing will have its own information such as description, city, price, year of building, material, and others. Our application will work with the Rating System. It means that person who wants to find a place to live, the person who wants to give a place to rent someplace and housing will be evaluated with the rating. After living together, both parties can leave feedback about each other. Also, the rating system will contain the average rating of the landlord.
