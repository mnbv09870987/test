-- 
-- Created by SQL::Translator::Producer::PostgreSQL
-- Created on Wed Jun 12 17:13:50 2019
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
-- Table: registrationdd
--
CREATE TABLE "registrationdd" (
  "id" serial NOT NULL,
  "e_mail" text NOT NULL,
  "parol" integer NOT NULL,
  "data" integer,
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
