class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :members, :email
  end
end
