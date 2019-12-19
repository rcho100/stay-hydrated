class CreateDrinkTotals < ActiveRecord::Migration[5.2]
  def change
    create_table :drink_totals do |t|
      t.integer :goal
      t.integer :actual_total
      t.boolean :goal_reached
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
