-- AlterTable
ALTER TABLE "public"."Posts" ADD COLUMN     "allocated" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "live" BOOLEAN NOT NULL DEFAULT false;
