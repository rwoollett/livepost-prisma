-- CreateEnum
CREATE TYPE "RenderStatus" AS ENUM ('Pending', 'Completed', 'Failed');

-- AlterTable
ALTER TABLE "Posts" ADD COLUMN     "renderStatus" "RenderStatus" NOT NULL DEFAULT 'Pending';
