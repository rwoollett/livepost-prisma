import { createTestContext } from './__helpers';

const ctx = createTestContext({ portRange: { from: 4000, to: 6000 } });

it('it create a new user', async () => {

  await ctx.prisma.users.create({
    data: {
      authUserEmail: "test@test.co.nz",
      authUserId: "womseetig",
      name: "Test user at Test company"
    }
  });

  const amount = await ctx.prisma.users.count();
  expect(amount).toMatchInlineSnapshot(`1`);

});
