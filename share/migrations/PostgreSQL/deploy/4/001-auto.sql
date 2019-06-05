-- 
-- Created by SQL::Translator::Producer::PostgreSQL
-- Created on Wed Jun  5 16:55:38 2019
-- 
;
--
-- Table: answer
--
CREATE TABLE "answer" (
  "id" serial NOT NULL,
  "question" integer NOT NULL,
  "answer" integer NOT NULL,
  "user_id" integer NOT NULL,
  PRIMARY KEY ("id")
);

;
--
-- Table: user
--
CREATE TABLE "user" (
  "id" serial NOT NULL,
  "name" text NOT NULL,
  "age" integer,
  PRIMARY KEY ("id"),
  CONSTRAINT "user_name" UNIQUE ("name")
);

;
