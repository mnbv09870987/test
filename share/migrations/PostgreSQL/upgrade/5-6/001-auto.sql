-- Convert schema '/home/user/work/mojo/my_app/share/migrations/_source/deploy/5/001-auto.yml' to '/home/user/work/mojo/my_app/share/migrations/_source/deploy/6/001-auto.yml':;

;
BEGIN;

;
CREATE TABLE "test" (
  "id" serial NOT NULL,
  "name" text NOT NULL,
  PRIMARY KEY ("id"),
  CONSTRAINT "test_name" UNIQUE ("name")
);

;
DROP TABLE "registrationdd" CASCADE;

;

COMMIT;

