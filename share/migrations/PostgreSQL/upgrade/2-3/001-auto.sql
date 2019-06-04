-- Convert schema '/home/user/work/mojo/my_app/share/migrations/_source/deploy/2/001-auto.yml' to '/home/user/work/mojo/my_app/share/migrations/_source/deploy/3/001-auto.yml':;

;
BEGIN;

;
ALTER TABLE "user" ADD COLUMN "age" integer;

;

COMMIT;

