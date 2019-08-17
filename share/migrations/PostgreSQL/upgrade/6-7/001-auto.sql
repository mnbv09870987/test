-- Convert schema '/home/user/work/mojo/my_app/share/migrations/_source/deploy/6/001-auto.yml' to '/home/user/work/mojo/my_app/share/migrations/_source/deploy/7/001-auto.yml':;

;
BEGIN;

;
ALTER TABLE "answer" ADD COLUMN "time" integer DEFAULT 0 NOT NULL;

;

COMMIT;

