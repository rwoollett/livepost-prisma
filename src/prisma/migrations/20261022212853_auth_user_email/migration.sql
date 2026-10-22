/*
  Warnings:

  - You are about to drop the column `authId` on the `Users` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[authUserEmail]` on the table `Users` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `authUserEmail` to the `Users` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "Users_authId_key";

-- AlterTable
ALTER TABLE "Users" DROP COLUMN "authId",
ADD COLUMN     "authUserEmail" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Users_authUserEmail_key" ON "Users"("authUserEmail");
