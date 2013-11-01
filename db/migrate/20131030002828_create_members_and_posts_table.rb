class CreateMembersAndPostsTable < ActiveRecord::Migration
  def up
     create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
     create_table :posts do |t|
      t.string :text
      t.belongs_to :members
      t.timestamps
    end
  end

  def down
     drop_table :members
     drop_table :posts
  end
end
