class SorceryCore < ActiveRecord::Migration
  def change
    change_table :members do |t|
      t.string :crypted_password, :null => false
      t.string :salt,             :null => false
    end
    add_index :members, :email, unique: true
  end
end
