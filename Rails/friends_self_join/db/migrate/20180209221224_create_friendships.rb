class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :user, index: true, foreign_key: { to_table: :users }
      t.references :friend, index: true, foreign_key: { to_table: :users }

      t.timestamps null: false
    end
  end
end
