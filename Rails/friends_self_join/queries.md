Find out how you can retrieve all users who are NOT a friend with the first User.
* Friendship.joins(:user).where.not('user_id = 1').select('users.first_name, users.last_name, users.id')
