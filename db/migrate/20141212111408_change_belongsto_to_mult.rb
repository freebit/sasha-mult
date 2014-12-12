class ChangeBelongstoToMult < ActiveRecord::Migration
  def change
    remove_belongs_to :mults, :user, index: true
    add_belongs_to :mults, :user
  end
end
