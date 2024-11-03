CREATE USER 'admin'@'localhost' IDENTIFIED BY '12345';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;

CREATE USER 'dean'@'localhost' IDENTIFIED BY '12345';
GRANT ALL PRIVILEGES ON project11.* TO 'dean'@'localhost';

CREATE USER 'lecturer'@'localhost' IDENTIFIED BY '12345';
GRANT SELECT, INSERT, UPDATE, DELETE ON projeect11.* TO 'lecturer'@'localhost';

CREATE USER 'tech_officer'@'localhost' IDENTIFIED BY '12345';
GRANT SELECT, INSERT, UPDATE ON project11.Attendance TO 'tech_officer'@'localhost';

CREATE USER 'student'@'localhost' IDENTIFIED BY '12345';
GRANT SELECT ON project11.Attendance, project11.Marks TO 'student'@'localhost';
