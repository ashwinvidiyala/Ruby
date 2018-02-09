### Created the comments model.
rails g model Comment commentable:references{polymorphic}
rake db:migrate
rails g migration AddContentToComment content:text
rake db:migrate

### Added this line to the User, Blog, Post and Message models
has_many :comments, as: :commentable

### Added comments to the different models
Comment.create(commentable: User.first)
Comment.create(commentable: User.third)
Comment.create(commentable: Blog.third)
Comment.first.update(content: "Comment by User 1")
Comment.second.update(content: "Comment by User 3")
Comment.third.update(content: "Comment from Blog 3")

Comment.create!(commentable: Post.first, content: "Comment from Post 1")
Comment.create!(commentable: Message.first, content: "Comment from Message 1")

#### Editing context of comment
Post.find(3).comments
Comment.find(4).update(content: "Comment from Post 3")

#### Deleting a comment of a user
User.third.comments
Comment.find(2).delete
