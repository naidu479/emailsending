class Users < ActiveRecord::Migration
  def up
    add_column("users","password_hash",:string,:limt=>25)
    add_column("users","password_salt",:string,:limt=>25)
  end

  def down
  end
end
