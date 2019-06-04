-- Convert schema '/home/user/work/mojo/my_app/share/migrations/_source/deploy/1/001-auto.yml' to '/home/user/work/mojo/my_app/share/migrations/_source/deploy/2/001-auto.yml':;

;
BEGIN;

;
CREATE TABLE "user" (
  "id" serial NOT NULL,
  "name" text NOT NULL,
  PRIMARY KEY ("id"),
  CONSTRAINT "user_name" UNIQUE ("name")
);

;

COMMIT;

