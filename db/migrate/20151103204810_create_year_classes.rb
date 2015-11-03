class CreateYearClasses < ActiveRecord::Migration
  def change
    create_table :year_classes do |t|
      t.string :type
      t.string :code

      t.timestamps null: false
    end
  end
end
