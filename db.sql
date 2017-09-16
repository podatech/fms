# noinspection SqlNoDataSourceInspectionForFile

CREATE TABLE t_users(
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

ALTER TABLE t_users
  ADD CONSTRAINT t_users_id_user_pk PRIMARY KEY(id_user);

CREATE TABLE t_users_roles(
  id_role VARCHAR(10),
  role VARCHAR(30),
  created_date TIMESTAMP,
  created_by VARCHAR(10),
  updated_date TIMESTAMP,
  updated_by VARCHAR(10)
);

ALTER TABLE t_users_roles
  ADD CONSTRAINT t_users_roles_pk PRIMARY KEY(id_role);

-- t_posts is representing Question

CREATE TABLE t_posts(
  id_post VARCHAR(10),
  post TEXT,
  created_date TIMESTAMP,
  created_by VARCHAR(10),
  updated_date TIMESTAMP,
  updated_by VARCHAR(10)
);

ALTER TABLE t_posts
  ADD CONSTRAINT t_posts_id_post_pk PRIMARY KEY(id_post);

CREATE TABLE t_tags(
  id_tag BIGINT NOT NULL,
  tag TEXT,
  created_date TIMESTAMP,
  created_by VARCHAR(10),
  updated_date TIMESTAMP,
  updated_by VARCHAR(10)
);

ALTER TABLE t_tags
  ADD CONSTRAINT t_tags_id_tag_pk PRIMARY KEY(id_tag);

CREATE TABLE t_streams(
  id_post VARCHAR(10),
  id_tag BIGINT,
  id_role VARCHAR(10),
  created_date TIMESTAMP,
  created_by VARCHAR(10),
  updated_date TIMESTAMP,
  updated_by VARCHAR(10)
);

ALTER TABLE t_streams
  ADD CONSTRAINT t_streams_t_post_fk
FOREIGN KEY(id_post)
REFERENCES t_posts(id_post)
  ON DELETE SET NULL
  ON UPDATE CASCADE;

ALTER TABLE t_streams
  ADD CONSTRAINT t_streams_t_tags_fk
FOREIGN KEY(id_tag)
REFERENCES t_tags(id_tag)
  ON DELETE SET NULL
  ON UPDATE CASCADE;

ALTER TABLE t_streams
  ADD CONSTRAINT t_streams_t_users_roles_fk
FOREIGN KEY(id_role)
REFERENCES t_users_roles(id_role)
  ON DELETE SET NULL
  ON UPDATE CASCADE;

CREATE TABLE t_answers(
  id_answer VARCHAR(10),
  answer TEXT,
  id_post VARCHAR(10),
  created_date TIMESTAMP,
  created_by VARCHAR(10),
  updated_date TIMESTAMP,
  updated_by VARCHAR(10)
);

ALTER TABLE t_answers
  ADD CONSTRAINT t_answers_id_answer_pk PRIMARY KEY(id_answer);

ALTER TABLE t_answers
  ADD CONSTRAINT t_answers_t_posts_fk
FOREIGN KEY(id_post)
REFERENCES t_posts(id_post)
  ON DELETE SET NULL
  ON UPDATE CASCADE;

-- Maybe some tables incorrect. The development process is still working on progress.
-- Add post title to t_posts
ALTER TABLE `t_posts` ADD `title` VARCHAR(255) NOT NULL AFTER `id_post`;