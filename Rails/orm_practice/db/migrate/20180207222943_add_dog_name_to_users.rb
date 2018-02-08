class AddDogNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dog_name, :string
  end
end
