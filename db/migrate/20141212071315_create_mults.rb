class CreateMults < ActiveRecord::Migration
  def change
    create_table :mults do |t|
      t.string :title
      t.string :video_id
    end

    add_index :mults, :video_id, :unique => true
  end
end
