-- 
-- Created by SQL::Translator::Producer::PostgreSQL
-- Created on Tue Jun  4 15:38:59 2019
-- 
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
