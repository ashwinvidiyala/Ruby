class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.string :dojo_location
      t.string :favorite_language
      t.text :comment

      t.timestamps null: false
    end
  end
end
