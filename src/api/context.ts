import { PrismaClient } from "../lib/prismaClient";

export interface Context {
  prisma: PrismaClient;
}

export interface TestingContext {
  prisma: PrismaClient;
}
