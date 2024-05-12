-- ---
-- Globals
-- ---

-- SET foreign_key_checks TO 0;

-- ---
-- Table 'User'
-- ---

DROP TABLE IF EXISTS "User";
		
CREATE TABLE "User" (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  surname VARCHAR(255),
  email VARCHAR(255)
);

-- ---
-- Table 'tutor'
-- ---

DROP TABLE IF EXISTS tutor;
		
CREATE TABLE tutor (
  id SERIAL PRIMARY KEY,
  id_user INTEGER REFERENCES "User"(id),
  id_country INTEGER REFERENCES country(id)
);

-- ---
-- Table 'student'
-- ---

DROP TABLE IF EXISTS student;
		
CREATE TABLE student (
  id SERIAL PRIMARY KEY,
  birthday DATE,
  nationality VARCHAR(255),
  id_user INTEGER REFERENCES "User"(id),
  id_university INTEGER REFERENCES university(id),
  id_country INTEGER REFERENCES country(id)
);

-- ---
-- Table 'university'
-- ---

DROP TABLE IF EXISTS university;
		
CREATE TABLE university (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  id_country INTEGER REFERENCES country(id)
);

-- ---
-- Table 'country'
-- ---

DROP TABLE IF EXISTS country;
		
CREATE TABLE country (
  id SERIAL PRIMARY KEY,
  country VARCHAR(255),
  time_zone VARCHAR(255)
);

-- ---
-- Table 'team'
-- ---

DROP TABLE IF EXISTS team;
		
CREATE TABLE team (
  id SERIAL PRIMARY KEY,
  team_name VARCHAR(255),
  id_student INTEGER REFERENCES student(id),
  id_tutor INTEGER REFERENCES tutor(id),
  id_cesim_game INTEGER REFERENCES "cesim game"(id)
);

-- ---
-- Table 'cesim game'
-- ---

DROP TABLE IF EXISTS "cesim game";
		
CREATE TABLE "cesim game" (
  id SERIAL PRIMARY KEY,
  start_date DATE,
  end_date DATE,
  id_round INTEGER REFERENCES round(id)
);

-- ---
-- Table 'round'
-- ---

DROP TABLE IF EXISTS round;
		
CREATE TABLE round (
  id SERIAL PRIMARY KEY,
  start_date DATE,
  end_date DATE,
  round_number INTEGER
);

-- ---
-- Table 'quiz'
-- ---

DROP TABLE IF EXISTS quiz;
		
CREATE TABLE quiz (
  id SERIAL PRIMARY KEY,
  category VARCHAR(255),
  id_questions INTEGER REFERENCES questions(id),
  id_answerCombinations INTEGER REFERENCES answerCombinations(id)
);

-- ---
-- Table 'questions'
-- ---

DROP TABLE IF EXISTS questions;
		
CREATE TABLE questions (
  id SERIAL PRIMARY KEY,
  questions TEXT
);

-- ---
-- Table 'answerCombinations'
-- ---

DROP TABLE IF EXISTS answerCombinations;
		
CREATE TABLE answerCombinations (
  id SERIAL PRIMARY KEY,
  id_questions INTEGER REFERENCES questions(id),
  id_answers INTEGER REFERENCES answers(id)
);

-- ---
-- Table 'answers'
-- ---

DROP TABLE IF EXISTS answers;
		
CREATE TABLE answers (
  id SERIAL PRIMARY KEY,
  id_questions INTEGER REFERENCES questions(id),
  answer TEXT,
  id_user INTEGER REFERENCES "User"(id)
);
