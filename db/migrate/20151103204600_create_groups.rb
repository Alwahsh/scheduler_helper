class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :number_of_students
      t.integer :number

      t.timestamps null: false
    end
  end
end
