/*
  Warnings:

  - A unique constraint covering the columns `[authUserId]` on the table `Users` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `authUserId` to the `Users` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Users" ADD COLUMN     "authUserId" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Users_authUserId_key" ON "Users"("authUserId");
