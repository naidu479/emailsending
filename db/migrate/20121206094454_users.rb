class Users < ActiveRecord::Migration
  def up
    add_column("users","password_hash",:string,:limt=>25)
    add_column("users","password_salt",:string,:limt=>25)
    add_column("users","firstname",:string,:limt=>255)
    add_column("users","lastname",:string,:limt=>255)
    add_column("users","sex",:string,:limt=>10)
    add_column("users","mobileno",:string,:limt=>15)
    add_column("users","address",:string,:limt=>255)
    add_column("users","passportno",:string,:limt=>20)
    add_column("users","pancardno",:string,:limt=>20)
  end

  def down
  end
end
