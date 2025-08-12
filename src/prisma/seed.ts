import { PrismaClient } from "@prisma/client";

(async () => {
  const prismaTest = new PrismaClient({
    datasources: {
      db: {
        url: process.env.DATABASE_URL
      }
    }
  });
  await prismaTest.$executeRaw`
  TRUNCATE TABLE "Posts" RESTART IDENTITY CASCADE;
  `;
  
  prismaTest.$disconnect();

})();

export { };