
<?xml version="1.0" encoding="utf-8" ?>
<!-- SQL XML created by WWW SQL Designer, https://github.com/ondras/wwwsqldesigner/ -->
<!-- Active URL: https://sql.toad.cz/ -->
<sql>
<datatypes db="mysql">
	<group label="Numeric" color="rgb(238,238,170)">
		<type label="Integer" length="0" sql="INTEGER" quote=""/>
	 	<type label="TINYINT" length="0" sql="TINYINT" quote=""/>
	 	<type label="SMALLINT" length="0" sql="SMALLINT" quote=""/>
	 	<type label="MEDIUMINT" length="0" sql="MEDIUMINT" quote=""/>
	 	<type label="INT" length="0" sql="INT" quote=""/>
		<type label="BIGINT" length="0" sql="BIGINT" quote=""/>
		<type label="Decimal" length="1" sql="DECIMAL" re="DEC" quote=""/>
		<type label="Single precision" length="0" sql="FLOAT" quote=""/>
		<type label="Double precision" length="0" sql="DOUBLE" re="DOUBLE" quote=""/>
	</group>

	<group label="Character" color="rgb(255,200,200)">
		<type label="Char" length="1" sql="CHAR" quote="'"/>
		<type label="Varchar" length="1" sql="VARCHAR" quote="'"/>
		<type label="Text" length="0" sql="MEDIUMTEXT" re="TEXT" quote="'"/>
		<type label="Binary" length="1" sql="BINARY" quote="'"/>
		<type label="Varbinary" length="1" sql="VARBINARY" quote="'"/>
		<type label="BLOB" length="0" sql="BLOB" re="BLOB" quote="'"/>
	</group>

	<group label="Date &amp; Time" color="rgb(200,255,200)">
		<type label="Date" length="0" sql="DATE" quote="'"/>
		<type label="Time" length="0" sql="TIME" quote="'"/>
		<type label="Datetime" length="0" sql="DATETIME" quote="'"/>
		<type label="Year" length="0" sql="YEAR" quote=""/>
		<type label="Timestamp" length="0" sql="TIMESTAMP" quote="'"/>
	</group>
	
	<group label="Miscellaneous" color="rgb(200,200,255)">
		<type label="ENUM" length="1" sql="ENUM" quote=""/>
		<type label="SET" length="1" sql="SET" quote=""/>
		<type label="Bit" length="0" sql="bit" quote=""/>
	</group>
</datatypes><table x="325" y="71" name="User">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="first name" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="surname" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="email" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="roi" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="189" y="123" name="tutor">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_User" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="User" row="id" />
</row>
<row name="id_country" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="country" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="1003" y="71" name="student">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="birthday" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="nationality" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_User" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="User" row="id" />
</row>
<row name="id_university" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="university" row="id" />
</row>
<row name="id_country" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="country" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="1143" y="227" name="university">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="name" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_country" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="country" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="550" y="220" name="country">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="country" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="time zone" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="494" y="396" name="team">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="team name" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_student" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="student" row="id" />
</row>
<row name="id_tutor" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="tutor" row="id" />
</row>
<row name="id_cesim game" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="cesim game" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="681" y="343" name="cesim game">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="start date" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="end date" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_round" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="round" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="881" y="346" name="round">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="start date" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="end date" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="round number" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="480" y="565" name="quiz">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="category" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_questions" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="questions" row="id" />
</row>
<row name="id_answerCombinations" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="answerCombinations" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="282" y="489" name="questions">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="questions" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="214" y="669" name="answerCombinations">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_questions" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="questions" row="id" />
</row>
<row name="id_answers" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="answers" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="209" y="273.5" name="answers">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_questions" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="questions" row="id" />
</row>
<row name="answer" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_User" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="User" row="id" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
</sql>

Modelagem fisica
```sql
-- Drop tables if they exist
DROP TABLE IF EXISTS "User", tutor, student, university, country, team, "cesim game", round, quiz, questions, answerCombinations, answers CASCADE;

-- Table 'User'
CREATE TABLE "User" (
  id SERIAL PRIMARY KEY,
  "first name" VARCHAR(255),
  surname VARCHAR(255),
  email VARCHAR(255),
  roi INTEGER
);

-- Table 'tutor'
CREATE TABLE tutor (
  id SERIAL PRIMARY KEY,
  id_User INTEGER REFERENCES "User"(id),
  id_country INTEGER
);

-- Table 'student'
CREATE TABLE student (
  id SERIAL PRIMARY KEY,
  birthday DATE,
  nationality VARCHAR(255),
  id_User INTEGER REFERENCES "User"(id),
  id_university INTEGER,
  id_country INTEGER
);

-- Table 'university'
CREATE TABLE university (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  id_country INTEGER
);

-- Table 'country'
CREATE TABLE country (
  id SERIAL PRIMARY KEY,
  country VARCHAR(255),
  "time zone" VARCHAR(255)
);

-- Table 'team'
CREATE TABLE team (
  id SERIAL PRIMARY KEY,
  "team name" VARCHAR(255),
  id_student INTEGER REFERENCES student(id),
  id_tutor INTEGER REFERENCES tutor(id),
  id_cesim_game INTEGER
);

-- Table 'cesim game'
CREATE TABLE "cesim game" (
  id SERIAL PRIMARY KEY,
  "start date" DATE,
  "end date" DATE,
  id_round INTEGER
);

-- Table 'round'
CREATE TABLE round (
  id SERIAL PRIMARY KEY,
  "start date" DATE,
  "end date" DATE,
  "round number" INTEGER
);

-- Table 'quiz'
CREATE TABLE quiz (
  id SERIAL PRIMARY KEY,
  category INTEGER,
  id_questions INTEGER,
  id_answerCombinations INTEGER
);

-- Table 'questions'
CREATE TABLE questions (
  id SERIAL PRIMARY KEY,
  questions VARCHAR(255)
);

-- Table 'answerCombinations'
CREATE TABLE answerCombinations (
  id SERIAL PRIMARY KEY,
  id_questions INTEGER REFERENCES questions(id),
  id_answers INTEGER
);

-- Table 'answers'
CREATE TABLE answers (
  id SERIAL PRIMARY KEY,
  id_questions INTEGER REFERENCES questions(id),
  answer VARCHAR(255),
  id_User INTEGER REFERENCES "User"(id)
);

-- Foreign Keys
ALTER TABLE tutor ADD FOREIGN KEY (id_country) REFERENCES country (id);
ALTER TABLE student ADD FOREIGN KEY (id_university) REFERENCES university (id);
ALTER TABLE student ADD FOREIGN KEY (id_country) REFERENCES country (id);
ALTER TABLE university ADD FOREIGN KEY (id_country) REFERENCES country (id);
ALTER TABLE team ADD FOREIGN KEY (id_cesim_game) REFERENCES "cesim game" (id);
ALTER TABLE "cesim game" ADD FOREIGN KEY (id_round) REFERENCES round (id);
ALTER TABLE quiz ADD FOREIGN KEY (id_questions) REFERENCES questions (id);
ALTER TABLE quiz ADD FOREIGN KEY (id_answerCombinations) REFERENCES answerCombinations (id);
ALTER TABLE answerCombinations ADD FOREIGN KEY (id_answers) REFERENCES answers (id);
```