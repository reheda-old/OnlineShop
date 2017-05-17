DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS order_details;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;


CREATE TABLE accounts(
  User_Name varchar(20) PRIMARY KEY NOT NULL,
  Active bit NOT NULL,
  Password varchar(20) NOT NULL,
  User_Role varchar(20) NOT NULL
);


CREATE TABLE order_details (
  ID varchar(50) PRIMARY KEY NOT NULL,
  Amount numeric NOT NULL,
  Price numeric NOT NULL,
  Quantity integer NOT NULL,
  ORDER_ID varchar(50) NOT NULL,
  PRODUCT_ID varchar(20) NOT NULL
);

-- Dumping structure for table online_shop.orders
CREATE TABLE orders (
  ID varchar(50) PRIMARY KEY NOT NULL,
  Amount numeric NOT NULL,
  Customer_Address varchar(255) NOT NULL,
  Customer_Email varchar(128) NOT NULL,
  Customer_Name varchar(255) NOT NULL,
  Customer_Phone varchar(128) NOT NULL,
  Order_Date TIMESTAMP NOT NULL,
  Order_Num integer NOT NULL
);


CREATE TABLE products (
  Code varchar(20) PRIMARY KEY NOT NULL,
  Create_Date TIMESTAMP NOT NULL,
  Image TEXT,
  Name varchar(255) NOT NULL,
  Price numeric NOT NULL,
  Description varchar(20000) NOT NULL
);

ALTER TABLE Orders
    ADD CONSTRAINT UK_ORDER_NUM UNIQUE (Order_Num);

ALTER TABLE  Order_Details
    ADD CONSTRAINT FK_ORDER_DETAILS_ORDER_ID
    FOREIGN KEY (ORDER_ID)
    REFERENCES Orders (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE  Order_Details
    ADD CONSTRAINT FK_ORDER_DETAILS_PRODUCT_ID
    FOREIGN KEY (PRODUCT_ID)
    REFERENCES Products (Code)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
-- Insert data to accounts
INSERT INTO accounts (User_Name, Active, Password, User_Role) 
VALUES ('employee1', b'1', 'employee1', 'EMPLOYEE');
 
INSERT INTO accounts (User_Name, Active, Password, User_Role) 
VALUES ('manager1', b'1', 'manager1', 'MANAGER');

-- Insert data to products
INSERT INTO products (Code, Create_Date, Image, Name, Price, Description) VALUES
    ('S000004', CURRENT_TIMESTAMP, NULL, 'Z-man Games - Carcassonne Board Game - Multi', 34.99, '<p>Create your own fortified city with this Carcassonne board game. Its 72 land tiles and 40 follower figures let two to five players build city structures and strategically assign caretakers while trying to score the most points. This Carcassonne board game provides further expansion via 12 river tiles and five abbots.</p><br><h4>Product Features</h4><p><b>Simple rules, beautifully illustrated tiles and iconic components</b><br>Carcassonne is the perfect introduction to the modern world of board games.<br></p><p><b>Two expansions in the box</b><br>Include The Abbot mini-expansion and a new version of The River.</p><p><b>For 2 to 5 players</b><br>So you and your friends can play together. <br></p><p><b>Suitable for ages 7 and older</b><br>For age-appropriate and imaginative fun. <br></p>');
INSERT INTO products (Code, Create_Date, Image, Name, Price, Description) VALUES
    ('S000005', CURRENT_TIMESTAMP, NULL, 'Days of Wonder - Ticket to Ride Board Game - Multi', 49.99, '<p>Build the longest interstate route with this Ticket to Ride board game. Its 225 colored train cars let two to five players construct railway routes on the North American board map, and the 144 illustrated cards provide drawing options for claiming routes and setting secret destinations. This strategic Ticket to Ride board game is fun for ages 8 and up.</p><br><h4>Product Features</h4><p><b>Cross-country train adventure</b><br>Collect and play matching train cards to claim railway routes connecting cities throughout the North America.<br></p><p><b>Connect iconic North American cities and build your train routes to earn points</b><br>Players must compete to grab the best train cards and routes before their opponents.<br></p><p><b>Plan ahead and connect two faraway cities for additional points</b><br>Additional points come to those who can fulfill their Destination Tickets by connecting two distant cities and to the player who builds the longest continuous railway.<br></p><p><b>For 2 to 5 players</b><br>So you and your friends can play together.<br></p><p><b>Suitable for ages 8 and older</b><br>For age-appropriate and imaginative fun.<br></p>');
INSERT INTO products (Code, Create_Date, Image, Name, Price, Description) VALUES
    ('S000006', CURRENT_TIMESTAMP, NULL, 'Mattel - Phase 10 Card Game - Multi', 4.99, '<p>Enjoy some amiable competition among friends with this Mattel Phase 10 card game. Its detailed rules require a series of 10 card combinations to win, and it helps younger children develop memory skills. This rummy-type Mattel Phase 10 card game lets your kids improve critical thinking capabilities while having fun.</p><br><h4>Product Features</h4><p><b>Rummy-type card game with a twist</b><br>Be the first player to complete 10 varied phases with two sets of three cards, one run of seven cards, or seven cards with the same color.<br></p><br><p><b>"Wild" and "Skip" cards</b><br>Add excitement and deliver game-changing moments.<br></p><br><p><b>Each phase is specific for each hand</b><br>Each player must complete one phase before advancing to the next round.<br></p><br><p><b>For two to six players</b><br>So you and your friends can play together.<br></p><br><p><b>Suitable for ages seven and up</b><br></p>');
INSERT INTO products (Code, Create_Date, Image, Name, Price, Description) VALUES
    ('S000007', CURRENT_TIMESTAMP, NULL, 'Catan Studio - Catan Board Game - Multi', 30.12, '<p>Tame the wilderness and outwit your opponents with this Catan board game. Players collect resources, build roads and develop settlements while simultaneously avoiding robbers and earning victory points. This Catan board game provides ever-changing scenarios and endless opportunities for strategic thinking because it plays different each time you start a game.</p><br><h4>Product Features</h4><p><b>Embark on a quest to settle the isle of Catan</b><br>Guide your settlers to victory by clever trading and cunning development.<br></p><br><p><b>Build roads, settlements, and cities</b><br>Use resource combinations - grain, wool, ore, brick, and lumber - to buy handy development cards.<br></p><br><p><b>No two games are the same</b><br>Random mix creates a different board virtually every game.<br></p><br><p><b>Perfect social game</b><br>Catan has been awarded with "Game of the Year", "Hall of Fame", and even "Game of the Century" honors in Germany, the United States, and a host of other countries worldwide.<br></p><br><p><b>For three or four players</b><br>Perfect for a small group of friends.<br></p><br><p><b>Suitable for ages 10 and older</b><br>For age-appropriate and imaginative fun.<br></p><br>');
INSERT INTO products (Code, Create_Date, Image, Name, Price, Description) VALUES
    ('S000008', CURRENT_TIMESTAMP, NULL, 'Asmodee - Braintopia Board Game - Multicolor', 14.98, '<p>Challenge your mind with Asmodee Braintopia game. Fast-paced play tests your intellectual abilities, coordination and powers of observation against up to five opponents as you gather cards to collect pieces of the brain. This Asmodee Braintopia game includes a rulebook, 80 challenge cards and 10 texture cards to keep your thinking skills sharp.</p><br><h4>Product Features</h4><p><b>Multiple challenges allow endless playability</b><br>Test your awareness, coordination, memory, and speed.<br></p><br><p><b>Easy to learn and quick to teach</b><br>So you can easily teach your friends and play with all of them.<br></p><br><p><b>Up to 6 players can play at a time</b><br>So you and your friends can play together.<br></p><br><p><b>Suitable for ages 8 and older</b><br>For age-appropriate and imaginative fun.<br></p><br>');
INSERT INTO products (Code, Create_Date, Image, Name, Price, Description) VALUES
    ('S000009', CURRENT_TIMESTAMP, NULL, 'Fantasy Flight - A Game of Thrones: The Board Game - Multi', 59.95, '<p>Claim control over all of Westeros with this A Game of Thrones board game. A multitude of tokens, overlays, cards and plastic units provide a variety of strategy options when you''re determining the fate of the seven kingdoms. This A Game of Thrones board game accommodates up to six players for an adventure-filled game night.</p><br><h4>Product Features</h4><p><b>A Game of Thrones: The Board Game Second Edition</b><br>Lets three to six players take control of the great houses of Westeros in an epic struggle to claim the Iron Throne.<br></p><br><p><b>The updated second edition</b><br>Incorporates elements from previous expansions, including ports, garrisons, Wildling cards, and Siege engines.<br></p><br><p><b>For three to six players</b><br>You and your friends can play together.<br></p><br><p><b>Suitable for ages 14 and older</b><br>For age-appropriate and imaginative fun.<br></p><br>');
INSERT INTO products (Code, Create_Date, Image, Name, Price, Description) VALUES
    ('S000010', CURRENT_TIMESTAMP, NULL, 'Winning Solutions - Scrabble Game and Message Board - Multi', 39.99, '<p>Engage the whole family in game night fun with this magnetized Winning Solutions Scrabble game. A dry-erase message board on the border around the playing surface lets you keep score and write notes. Hang this Winning Solutions Scrabble game on the wall or use it on a bed or other uneven surface.</p><br><h4>Product Features</h4><p><b>2-in-1 Edition Scrabble Game and Message Board</b><br>Includes full size metal game board with hangers, 100 magnetic tiles, 4 metal tile racks, dry erase marker with eraser, fabric tile pouch, 5 removable hooks.<br></p><br><p><b>Tin playing surface</b><br>For hanging on the wall.<br></p><br><p><b>Dry erase surface</b><br>For scorekeeping and notes.<br></p><br><p><b>Removable hooks</b><br>For hanging racks.<br></p><br><p><b>Suitable for children ages 8 and older</b><br>So your child can have fun playing.<br></p><br>');

-- Insert data to orders
INSERT INTO orders (ID, Amount, Customer_Address, Customer_Email, Customer_Name, Customer_Phone, Order_Date, Order_Num) VALUES
    ('8be3bcc8-3745-4685-8bdd-b4404e37b1f9', 30.12, 'st. Vesnina 89, apt. 9', 'valerii@gmail.com', 'Valerii', '0671234567', CURRENT_TIMESTAMP, 3),
    ('963d81b4-79ec-473f-b0a2-629dce47953a', 119.83, 'st. Sumska 49, apt. 11', 'olga@hotmail.com', 'Olga', '0631234567', CURRENT_TIMESTAMP, 2),
    ('b32759df-a145-4f7e-9640-478d47345b1d', 1259.75, 'st. Pushkinska 12, apt. 43', 'alex@gmail.com', 'Alex', '0981234567', CURRENT_TIMESTAMP, 1);  

-- Insert data to order_datails
INSERT INTO order_details (ID, Amount, Price, Quantity, ORDER_ID, PRODUCT_ID) VALUES
    ('05691822-3240-47ba-8c18-44d210fd1c6b', 384.89, 34.99, 11, 'b32759df-a145-4f7e-9640-478d47345b1d', 'S000004'),
    ('19779d90-1e02-4c94-8a0f-fb8e7180e772', 59.95, 59.95, 1, 'b32759df-a145-4f7e-9640-478d47345b1d', 'S000009'),
    ('66226d98-1fbe-4079-98b0-a9d09526e6b1', 19.96, 4.99, 4, 'b32759df-a145-4f7e-9640-478d47345b1d', 'S000006'),
    ('73a46e66-8f7b-4009-9dd5-3f76f33791f0', 479.88, 39.99, 12, 'b32759df-a145-4f7e-9640-478d47345b1d', 'S000010'),
    ('76cad37a-79a5-4659-ae83-10cefe3b5db6', 30.12, 30.12, 1, '8be3bcc8-3745-4685-8bdd-b4404e37b1f9', 'S000007'),
    ('870c0b64-537f-4076-b0d1-a4dbe14b2d1d', 104.86, 14.98, 7, '963d81b4-79ec-473f-b0a2-629dce47953a', 'S000008'),
    ('af8305c1-3167-4def-ab2d-5edc9bda3253', 60.24, 30.12, 2, 'b32759df-a145-4f7e-9640-478d47345b1d', 'S000007'),
    ('b1934fa5-8eb0-4013-8dbc-3ed7fc232bad', 14.97, 4.99, 3, '963d81b4-79ec-473f-b0a2-629dce47953a', 'S000006'),
    ('e8627637-5c0f-48c6-81c8-58ba1fa0e46c', 104.86, 14.98, 7, 'b32759df-a145-4f7e-9640-478d47345b1d', 'S000008'),
    ('f09ba54a-525a-4b25-babd-4eec0e326869', 149.97, 49.99, 3, 'b32759df-a145-4f7e-9640-478d47345b1d', 'S000005');