DROP TABLE IF EXISTS interests;
DROP TABLE IF EXISTS friends;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS messages;
DROP TABLE IF EXISTS lastSeen;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  firstName VARCHAR(255) NOT NULL,
  lastName VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL, 
  interest VARCHAR(255) NOT NULL,
  gender VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  longitude decimal,
  latitude decimal,
  age VARCHAR(255) NOT NULL,
  picture VARCHAR(255) NOT NULL,
  bio VARCHAR(255) NOT NULL 
);

CREATE TABLE messages (
  id SERIAL PRIMARY KEY,
  chatKey VARCHAR(255) NOT NULL,
  senderEmail VARCHAR(255) NOT NULL,
  receiverEmail VARCHAR(255) NOT NULL,
  senderName VARCHAR(255) NOT NULL,
  receiverName VARCHAR(255) NOT NULL,
  body TEXT NOT NULL,
  timestamp bigint NOT NULL 
);

CREATE TABLE lastSeen (
  chatKey VARCHAR(255) NOT NULL,
  userEmail VARCHAR(255) NOT NULL,
  lastSeen bigint NOT NULL 
);

CREATE TABLE friends (
  id SERIAL PRIMARY KEY,
  userId INT references users(id),
  friendId INT references users(id)
);

CREATE TABLE interests (
  id SERIAL primary key,
  name VARCHAR(255) NOT NULL
);


-- INSERT INTO users (firstName, lastName, email, password, gender, address, longitude, latitude, age, picture ) VALUES ('John', 'Cook', 'john@cook.com', 'asdf', 'Sport', 'Male', 'Edinburgh', '55.953251', '-3.188267', '18-25', 'https://api.adorable.io/avatars/127/John.png');
-- INSERT INTO users (firstName, lastName, email, password, gender, address, longitude, latitude, age, picture ) VALUES ('James', 'Fraser', 'james@fraser.com', 'asdf', 'Gaming', 'Male', 'Edinburgh', '55.963251', '-3.158267', '18-25', 'https://api.adorable.io/avatars/127/James.png');
-- INSERT INTO users (firstName, lastName, email, password, gender, address, longitude, latitude, age, picture ) VALUES ('Alex', 'Jones', 'alex@jones.com', 'asdf', 'Art', 'Female', 'Edinburgh', '55.973251', '-3.168267', '18-25', 'https://api.adorable.io/avatars/127/Alex.png');
-- INSERT INTO users (firstName, lastName, email, password, gender, address, longitude, latitude, age, picture ) VALUES ('Robin', 'Hood', 'robin@hood.com', 'asdf', 'Travelling', 'Female', 'Edinburgh', '55.963251', '-3.188267', '18-25', 'https://api.adorable.io/avatars/127/Robin.png');

INSERT INTO users (firstName, lastName, email, password, interest, gender, address, longitude, latitude, age, picture, bio ) VALUES ('Ronan', 'Huge-Mad', 'ronan@ronan.com', 'asdf', 'Sport', 'Male', 'Edinburgh', '-3.188267', '55.953251', '18-25', 'https://imgur.com/eEJ2MIl.jpg', 'Irish berserk');
INSERT INTO users (firstName, lastName, email, password, interest, gender, address, longitude, latitude, age, picture, bio ) VALUES ('Sara', 'Duck', 'sara@duck.com', 'asdf', 'Travelling', 'Female', 'Edinburgh', '-3.158267', '55.963251', '18-25', 'https://imgur.com/zAZ3JJt.jpg', 'Swedish birdie');
INSERT INTO users (firstName, lastName, email, password, interest, gender, address, longitude, latitude, age, picture, bio ) VALUES ('Keith', 'Tatties', 'keith@tatties.com', 'asdf', 'Art', 'Male', 'Edinburgh', '-3.168267', '55.973251', '18-25', 'https://imgur.com/iWrsvyA.jpg', 'Mr Keith-tato');
INSERT INTO users (firstName, lastName, email, password, interest, gender, address, longitude, latitude, age, picture, bio ) VALUES ('Ahmed', 'Tooth', 'ahmend@tooth.com', 'asdf', 'Sport', 'Male','Edinburgh', '-3.188267', '55.963251', '18-25', 'https://imgur.com/0OtHobu.jpg', 'Mighty biter');
INSERT INTO users (firstName, lastName, email, password, interest, gender, address, longitude, latitude, age, picture, bio ) VALUES ('Craig', 'Gingerbeard', 'craig@gingerbeard.com', 'asdf', 'Gaming', 'Male','Edinburgh', '-3.178267', '55.98251', '18-25', 'https://imgur.com/UU9853P.jpg', 'King of Hipsterland');
INSERT INTO users (firstName, lastName, email, password, interest, gender, address, longitude, latitude, age, picture, bio ) VALUES ('Jack', 'Potter', 'jack@potter.com', 'asdf', 'Travelling', 'Male','Edinburgh', '-3.158267','55.94251', '18-25', 'https://i.imgur.com/TA0tYxj.jpg', 'King of Hipsterland');

INSERT INTO users (firstName, lastName, email, password, interest, gender, address, longitude, latitude, age, picture, bio ) VALUES ('Noura', 'Tired', 'noura@tired.com', 'asdf', 'Travelling', 'Female','Edinburgh', '-3.2071671','55.9548662', '18-25', 'https://i.imgur.com/fBVuZ6H.jpg', 'King of sleeping');
INSERT INTO users (firstName, lastName, email, password, interest, gender, address, longitude, latitude, age, picture, bio ) VALUES ('Ollie', 'Hitman', 'ollie@hitman.com', 'asdf', 'Sport', 'Male','Edinburgh', '-3.1914842','55.9333525', '18-25', 'https://i.imgur.com/dTqioD1.jpg', 'King of gangsters');
INSERT INTO users (firstName, lastName, email, password, interest, gender, address, longitude, latitude, age, picture, bio ) VALUES ('Adam', 'NotHappy', 'adam@nothappy.com', 'asdf', 'Gaming', 'Male','Edinburgh', '-3.2070216','55.9348627', '18-25', 'https://i.imgur.com/4VLPvmI.jpg', 'King of Happiness');


INSERT INTO interests (name) VALUES ('Gaming');
INSERT INTO interests (name) VALUES ('Programming');
INSERT INTO interests (name) VALUES ('Dancing');
INSERT INTO interests (name) VALUES ('Rock Climbing');
INSERT INTO interests (name) VALUES ('Hiking');
INSERT INTO interests (name) VALUES ('Chess');

INSERT INTO friends (userId, friendId) VALUES (1, 2);
INSERT INTO friends (userId, friendId) VALUES (1, 3);
INSERT INTO friends (userId, friendId) VALUES (2, 1);
INSERT INTO friends (userId, friendId) VALUES (3, 1);
INSERT INTO friends (userId, friendId) VALUES (2, 4);
INSERT INTO friends (userId, friendId) VALUES (4, 2);








