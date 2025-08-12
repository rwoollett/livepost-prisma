/*
  Warnings:

  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_usersId_fkey";

-- DropTable
DROP TABLE "Post";

-- CreateTable
CREATE TABLE "Posts" (
    "id" SERIAL NOT NULL,
    "date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "title" TEXT NOT NULL DEFAULT '',
    "content" TEXT NOT NULL DEFAULT '',
    "thumbsUp" INTEGER NOT NULL DEFAULT 0,
    "hooray" INTEGER NOT NULL DEFAULT 0,
    "heart" INTEGER NOT NULL DEFAULT 0,
    "rocket" INTEGER NOT NULL DEFAULT 0,
    "eyes" INTEGER NOT NULL DEFAULT 0,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Posts_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Posts" ADD CONSTRAINT "Posts_userId_fkey" FOREIGN KEY ("userId") REFERENCES "Users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
