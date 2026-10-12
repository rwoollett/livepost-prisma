/*
  Warnings:

  - You are about to drop the column `live` on the `Posts` table. All the data in the column will be lost.

*/
-- CreateEnum
CREATE TYPE "PostStatus" AS ENUM ('Draft', 'PendingModeration', 'Live', 'Rejected');

-- AlterTable
ALTER TABLE "Posts" DROP COLUMN "live",
ADD COLUMN     "draftContent" TEXT,
ADD COLUMN     "draftTitle" TEXT,
ADD COLUMN     "status" "PostStatus" NOT NULL DEFAULT 'Draft';
