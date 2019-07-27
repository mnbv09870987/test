-- Convert schema '/home/user/work/mojo/my_app/share/migrations/_source/deploy/6/001-auto.yml' to '/home/user/work/mojo/my_app/share/migrations/_source/deploy/5/001-auto.yml':;

;
BEGIN;

;
CREATE TABLE "registrationdd" (
  "id" serial NOT NULL,
  "e_mail" text NOT NULL,
  "parol" integer NOT NULL,
  "data" integer,
  PRIMARY KEY ("id")
);

;
DROP TABLE "test" CASCADE;

;

COMMIT;

