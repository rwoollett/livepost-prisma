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
  await prismaTest.$executeRaw`
  TRUNCATE TABLE "Users" RESTART IDENTITY CASCADE;
  `;

  await prismaTest.$executeRaw`
  INSERT INTO "Users" ("authId", "name") VALUES ('temp@hello.co.nz', 'Temp User at Hello co nz');
  `;

  await prismaTest.$executeRaw`
  INSERT INTO "Posts" ("title", "content", "userId", "date") VALUES ('Some tough spiders are thought of simply as figs', 'Their bird was, in this moment, a silly bear. They were lost without the amicable kiwi that composed their fox. A peach is an amicable crocodile. A tidy fox without sharks is truly a scorpion of willing cats. Shouting with happiness, a currant is a wise currant!', 1, NOW());
  `;

  prismaTest.$disconnect();

})();

export { };