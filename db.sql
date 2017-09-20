# noinspection SqlNoDataSourceInspectionForFile

CREATE TABLE users(
  id_user VARCHAR(10),
  username VARCHAR(14),
  password VARCHAR(255),
  status ENUM('1','2','4'),
  created_date TIMESTAMP,
  created_by VARCHAR(10),
  updated_date TIMESTAMP,
  updated_by VARCHAR(10)
);

-- 1:Non Active, 2:Active, 4:Hold

ALTER TABLE users
ADD CONSTRAINT users_id_user_pk PRIMARY KEY(id_user);

CREATE TABLE users_roles(
  id_role VARCHAR(10),
  role VARCHAR(30),
  created_date TIMESTAMP,
  created_by VARCHAR(10),
  updated_date TIMESTAMP,
  updated_by VARCHAR(10)
);

ALTER TABLE users_roles
ADD CONSTRAINT users_roles_pk PRIMARY KEY(id_role)

CREATE TABLE questions(
  id_question VARCHAR(10),
  question TEXT,
  created_date TIMESTAMP,
  created_by VARCHAR(10),
  updated_date TIMESTAMP,
  updated_by VARCHAR(10)
);

ALTER TABLE questions
ADD CONSTRAINT questions_id_question_pk PRIMARY KEY(id_question);

CREATE TABLE tags(
  id_tag BIGINT NOT NULL,
  tag TEXT,
  created_date TIMESTAMP,
  created_by VARCHAR(10),
  updated_date TIMESTAMP,
  updated_by VARCHAR(10)
);

ALTER TABLE tags
ADD CONSTRAINT tags_id_tag_pk PRIMARY KEY(id_tag);

CREATE TABLE streams(
  id_question VARCHAR(10),
  id_tag BIGINT,
  id_role VARCHAR(10),
  created_date TIMESTAMP,
  created_by VARCHAR(10),
  updated_date TIMESTAMP,
  updated_by VARCHAR(10)
);

ALTER TABLE streams
ADD CONSTRAINT streams_question_fk
  FOREIGN KEY(id_question)
  REFERENCES questions(id_question)
  ON DELETE SET NULL
  ON UPDATE CASCADE;

ALTER TABLE streams
ADD CONSTRAINT streams_tags_fk
  FOREIGN KEY(id_tag)
  REFERENCES tags(id_tag)
  ON DELETE SET NULL
  ON UPDATE CASCADE;

ALTER TABLE streams
ADD CONSTRAINT streams_users_roles_fk
  FOREIGN KEY(id_role)
  REFERENCES users_roles(id_role)
  ON DELETE SET NULL
  ON UPDATE CASCADE;

CREATE TABLE answers(
  id_answer VARCHAR(10),
  answer TEXT,
  id_question VARCHAR(10),
  created_date TIMESTAMP,
  created_by VARCHAR(10),
  updated_date TIMESTAMP,
  updated_by VARCHAR(10)
);

ALTER TABLE answers
ADD CONSTRAINT answers_id_answer_pk PRIMARY KEY(id_answer);

ALTER TABLE answers
ADD CONSTRAINT answers_questions_fk
  FOREIGN KEY(id_question)
  REFERENCES questions(id_question)
  ON DELETE SET NULL
  ON UPDATE CASCADE;

-- Maybe some tables incorrect. The development process is still working on progress