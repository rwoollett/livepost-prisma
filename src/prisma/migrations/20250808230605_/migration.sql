/*
  Warnings:

  - You are about to drop the column `userId` on the `Post` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Post" DROP COLUMN "userId",
ALTER COLUMN "thumbsUp" SET DEFAULT 0,
ALTER COLUMN "hooray" SET DEFAULT 0,
ALTER COLUMN "heart" SET DEFAULT 0,
ALTER COLUMN "rocket" SET DEFAULT 0,
ALTER COLUMN "eyes" SET DEFAULT 0;
