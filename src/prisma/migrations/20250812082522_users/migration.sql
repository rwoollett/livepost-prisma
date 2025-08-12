/*
  Warnings:

  - You are about to drop the column `user` on the `Post` table. All the data in the column will be lost.
  - Added the required column `usersId` to the `Post` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Post" DROP COLUMN "user",
ADD COLUMN     "usersId" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "Users" (
    "id" SERIAL NOT NULL,
    "authId" TEXT NOT NULL,
    "name" TEXT NOT NULL DEFAULT '',

    CONSTRAINT "Users_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Users_authId_key" ON "Users"("authId");

-- AddForeignKey
ALTER TABLE "Post" ADD CONSTRAINT "Post_usersId_fkey" FOREIGN KEY ("usersId") REFERENCES "Users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
