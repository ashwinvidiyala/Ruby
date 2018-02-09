#### Have the first 3 blogs be owned by the first user
User.first.blogs_owned << Blog.first
User.first.blogs_owned << Blog.second
User.first.blogs_owned << Blog.third

#### Have the 4th blog you create be owned by the second user
User.second.blogs_owned << Blog.fourth

#### Have the 5th blog you create be owned by the last user
User.last.blogs_owned << Blog.fifth
user.last.blogs_owned = Blog.fifth

#### Have the third user own all of the blogs that were created.
User.third.blogs_owned << Blog.all

#### Have the first user create 3 posts for the blog with an id of 2. Remember that you shouldn't do Post.create(user: User.first, blog_id: 2) but more like Post.create(user: User.first, blog: Blog.find(2)). Again, you should never reference the foreign key in Rails.
User.find(1).posts.create!(title: "New Post", context: "This is a post by User 1 on Blog 2", blog: Blog.find(2))

#### Have the second user create 5 posts for the last Blog.
User.second.posts.create!(title: "New Post", context: "This is a post by User 2 on last Blog", blog: Blog.last)
User.second.posts.create!(title: "New Post 2", context: "This is a post by User 2 on last Blog", blog: Blog.last)
User.second.posts.create!(title: "New Post 3", context: "This is a post by User 2 on last Blog", blog: Blog.last)
User.second.posts.create!(title: "New Post 4", context: "This is a post by User 2 on last Blog", blog: Blog.last)
User.second.posts.create!(title: "New Post 5", context: "This is a post by User 2 on last Blog", blog: Blog.last)

#### Have the 3rd user create several posts for different blogs.
User.third.posts.create!(title: "Awesome Post", context: "Created by User 3 on Blog 4", blog: Blog.find(4))
User.third.posts.create!(title: "Awesome Post", context: "Created by User 3 on Blog 6", blog: Blog.find(6))
User.third.posts.create!(title: "Awesome Post", context: "Created by User 3 on Blog 8", blog: Blog.find(8))
User.third.posts.create!(title: "Awesome Post", context: "Created by User 3 on last blog", blog: Blog.last)

#### Have the 3rd user create 2 messages for the first post created and 3 messages for the second post created
User.third.messages.create!(message: "This message is by User 3 on Post 1", post: Post.first, author: "User 3")
User.third.messages.create!(message: "This second message is by User 3 on Post 1", post: Post.first, author: "User 3")
User.third.messages.create(message: "This message is by User 3 on Post 2", post: Post.second, author: "User 3")
User.third.messages.create(message: "This second message is by User 3 on Post 2", post: Post.second, author: "User 3")
User.third.messages.create(message: "This third message is by User 3 on Post 2", post: Post.second, author: "User 3")

#### Have the 4th user create 3 messages for the last post you created.
User.fourth.messages.create(message: "This message is created by User 4 on the last post", author: "User 4", post: Post.last)
User.fourth.messages.create(message: "This second message is created by User 4 on the last post", author: "User 4", post: Post.last)
User.fourth.messages.create(message: "This third message is created by User 4 on the last post", author: "User 4", post: Post.last)

#### Change the owner of the 2nd post to the last user.
Post.second.update(user: User.second)

#### Change the 2nd post's content to be something else.
Post.second.update(context: "Something else")

#### Retrieve all blogs owned by the 3rd user (make this work by simply doing: User.find(3).blogs).
User.find(3).blogs_posted_on

#### Retrieve all posts that were created by the 3rd user
User.third.posts

#### Retrieve all messages left by the 3rd user
User.third.messages

#### Retrieve all posts associated with the blog id 5 as well as who left these posts.
Blog.find(5).posts.joins(:user)

#### Retrieve all messages associated with the blog id 5 along with all the user information of those who left the messages
Blog.find(5).messages.joins(:user).select("users.first_name, users.last_name, users.email_address, messages.message")

#### Grab all user information of those that own the first blog (make this work by allowing Blog.first.owners to work).
Blog.first.owners

#### Change it so that the first blog is no longer owned by the first user.
User.first.blogs_owned.delete(Blog.first)
