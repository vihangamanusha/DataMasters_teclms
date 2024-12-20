CREATE DATABASE Group11;


CREATE TABLE Lecture(
    NIC INT,
    Lecture_id CHAR(6),
    Department_id VARCHAR(10), 
    Lecture_name VARCHAR(50),
    Gender CHAR(1),
    Email VARCHAR(50),
    Address VARCHAR(70),
    Birth_day DATE,
    PRIMARY KEY(Lecture_id)
    
);
---foreign key for lecture
ALTER TABLE Lecture
ADD FOREIGN KEY(Department_id) REFERENCES Department(department_id);

ALTER TABLE Lecture
ADD FOREIGN KEY(NIC) REFERENCES USER(NIC);
-----end-----



CREATE TABLE Lecture_phonenumber(
    Lecture_id CHAR(6),
    Phone_number CHAR(10)

);
----add foreign key to lecture_phonenumber
ALTER TABLE Lecture_phonenumber
ADD FOREIGN KEY(Lecture_id) REFERENCES Lecture(Lecture_id);


CREATE TABLE USER(
    NIC INT,
    Name VARCHAR(50),
    Role VARCHAR(15),
    PRIMARY KEY(NIC)
    
);


INSERT INTO USER
VALUES
    (1020,"W.K.L.M.Kumara","Lecture"),
    (1026,"F.K.Fatheema","Lecture"),
    (2048,"S.Subramanium","Lecture"),
    (3048,"K.M.Mallika","Lecture"),
    (4040,"W.M.S.Perera","Lecture"),
    (5020,"G.H.W.Kumara","Lecture"),
    (5238,"B.N.S.Lakmal","Lecture"),
    (6439,"P.C.P.Premathilaka","Lecture"),
    (6869,"N.M.Shehara","Lecture"),
    (6687,"K.K.Silva","Lecture"),
    (6940,"G.H.M.Sunanda","Lecture"),
    (6980,"M.Nadiya","Lecture"),
    (7888,"K.M.Sureka","Lecture"),
    (7950,"N.N.Ranaweera","Lecture"),
    (8100,"S.S.Kamal","Lecture"),
    (8109,"H.N.K.Siril","Lecture"),
    (1015,"G.B.K.Sameera","Student"),
    (1136,"A.P.kamindu","Student"),
    (1284,"R.M.Saranga","Student"),
    (1365,"S.N.Rajitha","Student"),
    (1689,"L.K.Nuwan","Student"),
    (2089,"S.M.Priyantha","Student"),
    (9516,"K.W.Chathurika","Student"),
    (3208,"H.A.M.Dilshan","Student"),
    (1278,"P.R.Nadeesha","Student"),
    (9856,"U.D.Dinusha","Student"),
    (2356,"V.P.Kavindi","Student"),
    (9267,"C.S.Perera","Student"),
    (2399,"N.W.Mahesha","Student"),
    (8966,"L.P.Kasun","Student"),
    (2150,"R.N.Priyadarshani","Student"),
    (2435,"K.M.Chamika","Student"),
    (8750,"S.W.Nethmi","Student"),
    (2401,"A.G.Tharindu","Student"),
    (3671,"D.W.Shanika","Student"),
    (2112,"H.P.Manishka","Student"),
    (3025,"A.K.Sanjeewa","Student"),
    (3660,"P.D.Shanika","Student"),
    (3254,"R.T.Kavindu","Student"),
    (0001,'A.B.Amal Perera','T/O'),
    (0002,'B.C.Nimali Silva','T/O'),
    (0003,'C.C.Kamal Rajapaksa','T/O'),
    (0004,'W.P.C.Dilani Fernando','T/O'),
    (0005,'B.S.H.Shantha Kumar','T/O'),
    (0006,'S.S.Pavani Weerakoon','T/O'),
    (0007,'D.G.Tharindu Jayasinghe','T/O'),
    (0008,'A.K.Anushka Dias','T/O'),
    (0009,'P.L.M.Buddhika Wickramasinghe','T/O'),
    (0010,'S.K.Lasantha Abeywardena','T/O'),
    (0011,'C.W.E.Chathurika De Silva','T/O'),
    (0012,'E.M.Ravi Jayawardena','T/O'),
    (0013,'E.K.Sewwandi Perera','T/O'),
    (0014,'T.M.Gihan Senanayake','T/O'),
    (0015,'R.P.Nadeesha Pathirana','T/O'),
    (0016,'W.S.Kavindu Perera','T/O'),
    (0017,'P.C.P.Chami Wickramasinghe','T/O'),
    (0018,'D.D.Dilantha Jayaratne','T/O'),
    (0019,'N.S.Nethmi Abeysekara','T/O'),
    (0020,'W.K.L.Sanjay Gamage','T/O'),
    (0021,' D.K.Jayawardena','Lecture'),
    (0022,'A.S.Perera','Lecture'),
    (0023,'L.T.Fernando','Lecture'),
    (0024,' H.P.de Silva ','Lecture'),
    (0025,'G.W.Karunaratne','Lecture'),
    (0026,'M.S.Ranasinghe','Lecture'), 
    (0027,'T.R.Rajapaksa','Lecture'),
    (0028,'N.M.Abeysinghe','Lecture'),
    (0029,'S.P.Kularathna','Lecture'),
    (0030,'W.R.Samarasinghe','Lecture'),
    (0031,' K.D.Amarasinghe','Lecture');





INSERT INTO Lecture 
VALUES
   (1020,'LE010','DpMUL', 'W.K.L.M.Kumara', 'M', 'lalith.kumara@ruh.ac.lk', 'No. 25, Colombo 07', '1980-05-15'),
   (1026,'LE011', 'DpMUL','F.K.Fatheema', 'F', 'fatheemaff@ruh.ac.lk', 'No. 12, Galle Road, Colombo 03', '1985-11-23'),
   (2048,'LE012', 'DpMUL','S.Subramanium', 'M', 'subramaniums@eruh.ac.lk', 'No. 78, Kandy Road, Kandy', '1978-03-09'),
   (3048,'LE013','DpMUL', 'K.M.Mallika', 'F', 'mallika.k@ruh.ac.lk', 'No. 52, Matara', '1982-08-17'),
   (4040,'LE014', 'DpMUL','W.M.S.Perera', 'F', 'pererasumudu@ruh.ac.lk', 'No. 44, Negombo Road, Wattala', '1986-12-05'),
   (5020,'LE015','DpMUL', 'G.H.W.Kumara', 'M', 'kumarag076@ruh.ac.lk', 'No. 10, Gampaha', '1988-04-22'),
   (5238,'LE016', 'DpICT','B.N.S.Lakmal', 'M', 'nimeshlakmal@ruh.ac.lk', 'No. 95, Dehiwala', '1981-01-12'),
   (6439,'LE017','DpICT', 'P.C.P.Premathilaka', 'F', 'premathilakacpp@ruh.ac.lk', 'No. 33, Kurunegala', '1987-07-28'),
   (6869,'LE018','DpICT','N.M.Shehara', 'F', 'shehara.nulakshi@ruh.ac.lk', 'No. 5, Panadura', '1979-09-14'),
   (6687,'LE019','DpICT', 'K.K.Silva', 'M', 'silva.k099@ruh.ac.lk', 'No. 18, Anuradhapura', '1984-06-30'),
   (6940,'LE020', 'DpENT','G.H.M.Sunanda', 'M', 'sunandaguruge@ruh.ac.lk', 'No.3/7/B,Kandy', '1984-10-15'),
   (6980,'LE021','DpENT', 'M.Nadiya', 'F', 'nadiyam122@ruh.ac.lk', 'No.1o,Nugawela Road,Galle', '1986-05-29'),
   (7888,'LE022','DpENT', 'K.M.Sureka', 'F', 'surekamadumali@ruh.ac.lk', 'Main street,Matara', '1990-07-23'),
   (7950,'LE023','DpENT', 'N.N.Ranaweera', 'M', 'ranaweera122@ruh.ac.lk', 'No.21,Sawisthripura,Anuradhapura', '1992-11-11'),
   (8100,'LE024', 'DpENT','S.S.Kamal', 'M', 'kamalss@ruh.ac.lk', 'Anuradhapura road,Kurunegala', '1985-03-17'),   
   (0021,'LE025','DpBST', 'D.K.Jayawardena', 'F', 'jayawardena.dk@ruh.ac.lk', 'No. 45, Panadura', '1987-04-23'),
   (0022,'LE026','DpBST', 'A.S.Perera', 'M', 'perera.as@ruh.ac.lk', 'No. 67, Kalmunai', '1985-07-14'),
   (0023,'LE027', 'DpBST','L.T.Fernando', 'F', 'fernando.lt@ruh.ac.lk', 'No. 32, Ratnapura', '1988-10-21'),
   (0024,'LE028','DpBST', 'H.P.de Silva', 'M', 'desilva.hp@ruh.ac.lk', 'No. 11, Badulla', '1975-06-30'),
   (0025,'LE029','DpBST', 'G.W.Karunaratne', 'F', 'karunaratne.gw@ruh.ac.lk', 'No. 85, Hambantota', '1992-03-18'),
   (0026,'LE030','DpICT', 'M.S.Ranasinghe', 'M', 'ranasinghe.ms@ruh.ac.lk', 'No. 28, Jaffna', '1979-08-25'),
   (0027,'LE031', 'DpICT','T.R.Rajapaksa', 'M', 'rajapaksa.tr@ruh.ac.lk', 'No. 39, Kotte', '1983-05-22'),
   (0028,'LE032','DpICT', 'N.M.Abeysinghe', 'F', 'abeysinghe.nm@ruh.ac.lk', 'No. 66, Vavuniya', '1981-12-03'),
   (0029,'LE033','DpBST', 'S.P.Kularathna', 'F', 'kularathna.sp@ruh.ac.lk', 'No. 14, Moratuwa', '1986-02-09'),
   (0030,'LE034','DpENT', 'W.R.Samarasinghe', 'M', 'samarasinghe.wr@ruh.ac.lk', 'No. 22, Galle', '1989-11-29'),
   (0031,'LE035','DpMUL', 'K.D.Amarasinghe', 'F', 'amarasinghe.kd@ruh.ac.lk', 'No. 8, Nugegoda', '1982-01-16');

   


INSERT INTO Lecture_phonenumber
VALUES
   ('LE011', '0711563568'),
   ('LE012', '0765467666'),
   ('LE023', '0745623345'),
   ('LE034', '0778946344'),
   ('LE035', '0712347899'),
   ('LE058', '0709867467'),
   ('LE069', '0709456678'),
   ('LE080', '0723567833'),
   ('LE088', '0746578933'),
   ('LE091', '0777773221'),
   ('LE092', '0771234483'),
   ('LE093', '0704895322'),
   ('LE095', '0715678953'),
   ('LE011', '0711112354'),
   ('LE012', '0356782143'),
   ('LE023', '0467812456'),
   ('LE034', '0361289475'),
   ('LE035', '0967812563'),
   ('LE046', '0674563289'),
   ('LE047', '0346793276');
  



----Crate and insert grade values---


CREATE TABLE Grade_values (
    grade CHAR(2),
    min_marks INT,
    max_marks INT,
    grade_point DECIMAL(3, 2)
);




INSERT INTO Grade_values (grade, min_marks, max_marks, grade_point) VALUES
('A+', 90, 100, 4.0),
('A', 85, 89, 4.0),
('A-', 80, 84, 3.7),
('B+', 75, 79, 3.3),
('B', 70, 74, 3.0),
('B-', 65, 69, 2.7),
('C+', 60, 64, 2.3),
('C', 55, 59, 2.0),
('C-', 50, 54, 1.7),
('D+', 45, 49, 1.3),
('D', 40, 44, 1.0),
('E', 30, 39, 0.0),
('F', 0, 29, 0.0);



