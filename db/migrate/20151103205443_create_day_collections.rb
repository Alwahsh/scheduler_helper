class CreateDayCollections < ActiveRecord::Migration
  def change
    create_table :day_collections do |t|

      t.timestamps null: false
    end
  end
end
