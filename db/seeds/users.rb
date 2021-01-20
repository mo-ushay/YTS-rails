User.where(email: 'ushay@ushay.com').find_or_create_by!(
  user_name: 'admin',
  email: 'ushay@ushay.com',
  password: 'pass',
  abilities: ['ROOT'],
  name: 'Ushay-admin',
  introduction: 'This is the admin!'
)

User.where(email: 'test@ushay.com').find_or_create_by!(
  user_name: 'test',
  email: 'test@ushay.com',
  password: 'pass',
  abilities: ['USER'],
  name: 'test-user',
  introduction: 'This is a test user!'
)

User.where(email: 'test1@ushay.com').find_or_create_by!(
  user_name: 'test1',
  email: 'test1@ushay.com',
  password: 'pass',
  abilities: ['USER'],
  name: 'test-user1',
  introduction: 'This is another test user!'
)

User.where(email: 'test2@ushay.com').find_or_create_by!(
  user_name: 'test2',
  email: 'test2@ushay.com',
  password: 'pass',
  abilities: ['USER'],
  name: 'test-user2',
  introduction: 'This is another test user!'
)