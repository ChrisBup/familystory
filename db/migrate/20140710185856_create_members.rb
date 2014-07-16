class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email, :null => false
      t.string :dob
      t.string :city
      t.string :bio
      t.string :password_digest,  :null => false
      t.string :crypted_password, :null => false
      t.string :salt,             :null => false

      t.timestamps
    end
    add_index :members, :email, unique: true
  end
end
