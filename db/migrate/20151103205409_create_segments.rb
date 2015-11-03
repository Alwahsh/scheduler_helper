class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.decimal :start
      t.decimal :end
      t.integer :day

      t.timestamps null: false
    end
  end
end
