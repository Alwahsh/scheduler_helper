class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.string :type
      t.decimal :lecture_length
      t.decimal :lecs_per_week
      t.decimal :secs_per_week
      t.decimal :section_length

      t.timestamps null: false
    end
  end
end
