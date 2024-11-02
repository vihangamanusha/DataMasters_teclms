ALTER TABLE Marks  ADD FOREIGN KEY(student_id) REFERENCES Student (Student_id);
ALTER TABLE Marks  ADD FOREIGN KEY(course_code) REFERENCES Course_unit (Course_code);
ALTER TABLE Marks  ADD FOREIGN KEY(medical_submission_id) REFERENCES Medical_submission (Submission_id);
