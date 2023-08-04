class CreateWeeklymeals < ActiveRecord::Migration[7.0]
  def change
    create_table :weeklymeals do |t|
      t.integer :recipe_id
      t.integer :week_id

      t.timestamps
    end
  end
end
