class CreateStaffMembers < ActiveRecord::Migration
  def change
    create_table :staff_members do |t|
      t.decimal :max_hours_per_day
      t.string :name
      t.string :code
      t.decimal :score
      t.decimal :min_gap
      t.decimal :max_gap
      t.string :type
      t.string :email

      t.timestamps null: false
    end
  end
end
