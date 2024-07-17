CREATE TABLE author (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE course (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE topic (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    creation_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status ENUM('active', 'closed') DEFAULT 'active',
    author_id BIGINT,
    course_id BIGINT,
    FOREIGN KEY (author_id) REFERENCES author(id),
    FOREIGN KEY (course_id) REFERENCES course(id)
);
