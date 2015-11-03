class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :type
      t.integer :capacity
      t.boolean :projector_support

      t.timestamps null: false
    end
  end
end
