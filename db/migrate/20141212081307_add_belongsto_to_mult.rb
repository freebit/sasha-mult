class AddBelongstoToMult < ActiveRecord::Migration
  def change
    add_belongs_to :mults, :user, index: true
  end
end
