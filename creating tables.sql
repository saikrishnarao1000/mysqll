use lms;

create table library_member(member_id int auto_increment, first_name varchar(25), last_name varchar(25), email_address varchar(35), phone_number bigint, membership_level varchar(10), address_id int, primary key(member_id), foreign key(address_id) references address(address_id));
create table checkout(id int auto_increment, isbn bigint, member_id int, checkout_date datetime, due_date datetime, is_returned boolean, primary key(id), foreign key(member_id) References library_member(member_id), foreign key(isbn) references book_isbn(isbn));
create table book_isbn(isbn bigint, book_id int, primary key(isbn), foreign key(book_id) references book(book_id));
create table book(book_id int auto_increment, title varchar(45), author_name varchar(50), year_published int, quantity int, primary key(book_id));
create table address( address_id int auto_increment, line1 varchar(30), line2 varchar(30), city varchar(20), state char(2), zip int, primary key (address_id));

insert into address(line1, line2, city, state, zip) 
value("300 Cyberonics Blvd", NULL, "Houston", "TX", 77058),
("500 Elm Street", "Apt 302", "Austin", "TX", 78701),
("1234 Maple Avenue", NULL, "Dallas", "TX", 75201),
("789 Oak Street", "Suite 100", "San Antonio", "TX", 78201),
("450 Pine Road", NULL, "Fort Worth", "TX", 76102),
("600 Birch Lane", "Unit B", "Plano", "TX", 75023);

select * from address;

select * from library_member;

insert into book(title, author_name, year_published, quantity) 
values ('To Kill a Mockingbird', 'Harper Lee', 1960, 10),
('1984', 'George Orwell', 1949, 15),
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 20),
('Pride and Prejudice', 'Jane Austen', 1813, 12),
('The Catcher in the Rye', 'J.D. Salinger', 1951, 8),
('Lord of the Flies', 'William Golding', 1954, 10);
select * from book;

insert into book_isbn(isbn, book_id) 
value("123734","1"), ("234154","2"),("459678","3"),("645987","4"),
("832567","5"),("967432","6");

select * from book_isbn;

("345765","7"),("823812","8"),("112332","9"),("223443","10"),
("665887","11"),("998776","12"),("665266","13"),("113887","14"),("221876","15"),("442754","16"),
("332991","17"),("994226","18"),("552941","19"),("871641","20");

insert into library_member(first_name, last_name, email_address, phone_number, membership_level, address_id) 
value('John', 'Doe', 'john.doe@example.com', 1234567890, 'Gold', 1),
('Alice', 'Smith', 'alice.smith@example.com', 9876543210, 'Silver', 2),
('Michael', 'Johnson', 'michael.johnson@example.com', 5551234567, 'Gold', 3),
('Emily', 'Brown', 'emily.brown@example.com', 2223334444, 'Bronze', 4),
('David', 'Wilson', 'david.wilson@example.com', 7778889999, 'Gold', 5),
('Sarah', 'Taylor', 'sarah.taylor@example.com', 1112223333, 'Silver', 6);

select * from library_member;

('Christopher', 'Martinez', 'chris.martinez@example.com', 4445556666, 'Bronze', 7),
('Jessica', 'Anderson', 'jessica.anderson@example.com', 9998887777, 'Gold', 8),
('Matthew', 'Thomas', 'matthew.thomas@example.com', 6667778888, 'Silver', 9),
('Laura', 'White', 'laura.white@example.com', 3332221111, 'Bronze', 10);


insert into checkout (isbn, member_id, checkout_date, due_Date, is_returned) 
value ("123734","1","2023-11-06", "2023-12-01","0"),
("234154","2","2023-11-06", "2023-12-01","1"),
("459678","3","2023-10-06", "2023-11-01","1"),
("645987","4","2023-9-06", "2023-10-01","0"),
("832567","5","2023-8-06", "2023-9-01","1"),
("967432","6","2023-7-06", "2023-8-01","1");

select * from checkout;