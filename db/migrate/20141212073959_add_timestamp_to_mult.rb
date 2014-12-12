class AddTimestampToMult < ActiveRecord::Migration
  def change
    add_timestamps :mults
  end
end
