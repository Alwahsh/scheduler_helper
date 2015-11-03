class CreateSegmentCollections < ActiveRecord::Migration
  def change
    create_table :segment_collections do |t|

      t.timestamps null: false
    end
  end
end
