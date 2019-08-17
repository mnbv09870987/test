-- Convert schema '/home/user/work/mojo/my_app/share/migrations/_source/deploy/7/001-auto.yml' to '/home/user/work/mojo/my_app/share/migrations/_source/deploy/6/001-auto.yml':;

;
BEGIN;

;
ALTER TABLE "answer" DROP COLUMN "time";

;

COMMIT;

