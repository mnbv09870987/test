-- Convert schema '/home/user/work/mojo/my_app/share/migrations/_source/deploy/3/001-auto.yml' to '/home/user/work/mojo/my_app/share/migrations/_source/deploy/4/001-auto.yml':;

;
BEGIN;

;
CREATE TABLE "answer" (
  "id" serial NOT NULL,
  "question" integer NOT NULL,
  "answer" integer NOT NULL,
  "user_id" integer NOT NULL,
  PRIMARY KEY ("id")
);

;

COMMIT;

