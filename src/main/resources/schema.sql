CREATE TABLE professor (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name TEXT,
    department TEXT
);

CREATE TABLE course (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name TEXT,
    credits INTEGER,
    professorId INTEGER,
    FOREIGN KEY (professorId) REFERENCES professor(id)
);

CREATE TABLE student (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name TEXT,
    email TEXT
);

CREATE TABLE course_student (
    courseId INTEGER,
    studentId INTEGER,
    PRIMARY KEY (courseId, studentId),
    FOREIGN KEY (courseId) REFERENCES course(id),
    FOREIGN KEY (studentId) REFERENCES student(id)
);