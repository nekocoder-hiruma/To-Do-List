class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.boolean :is_completed, default: false
      t.date :due_date
      t.time :due_time

      t.timestamps
    end
  end
end
