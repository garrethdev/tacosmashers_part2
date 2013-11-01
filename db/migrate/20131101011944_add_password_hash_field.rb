class AddPasswordHashField < ActiveRecord::Migration
  def up
    add_column :members, :password_hash, :string 
  end

  def down
    remove _column :members, :password_hash
  end
end
