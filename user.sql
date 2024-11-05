CREATE USER 'admin'@'localhost' IDENTIFIED BY '12345';
GRANT ALL PRIVILEGES ON group11.* TO 'admin'@'localhost' WITH GRANT OPTION;

CREATE USER 'dean'@'localhost' IDENTIFIED BY '12345';
GRANT ALL PRIVILEGES ON group11.* TO 'dean'@'localhost';

CREATE USER 'lecturer'@'localhost' IDENTIFIED BY '12345';
GRANT SELECT, INSERT, UPDATE, DELETE ON group11.* TO 'lecturer'@'localhost';

CREATE USER 'tech_officer'@'localhost' IDENTIFIED BY '12345';
GRANT SELECT, INSERT, UPDATE ON group11.Attendance TO 'tech_officer'@'localhost';

CREATE USER 'student'@'localhost' IDENTIFIED BY '12345';
GRANT SELECT ON group11.Attendance TO 'student'@'localhost';
GRANT SELECT ON group11.Marks TO 'student'@'localhost';
