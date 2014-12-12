class AddUseridIndexToMult < ActiveRecord::Migration
  def change
    add_index :mults, :user_id
  end
end
