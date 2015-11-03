class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :number_of_students
      t.integer :number

      t.timestamps null: false
    end
  end
end
