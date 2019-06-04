-- 
-- Created by SQL::Translator::Producer::PostgreSQL
-- Created on Tue Jun  4 11:41:10 2019
-- 
;
--
-- Table: user
--
CREATE TABLE "user" (
  "id" serial NOT NULL,
  "name" text NOT NULL,
  PRIMARY KEY ("id"),
  CONSTRAINT "user_name" UNIQUE ("name")
);

;
