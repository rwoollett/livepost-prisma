/*
  Warnings:

  - A unique constraint covering the columns `[slug]` on the table `Posts` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `slug` to the `Posts` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "public"."Posts" ADD COLUMN     "slug" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Posts_slug_key" ON "public"."Posts"("slug");
