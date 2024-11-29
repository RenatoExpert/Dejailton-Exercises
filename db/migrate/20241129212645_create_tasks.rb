class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :budget
      t.date :deadline
      t.integer :order

      t.timestamps
    end
    add_index :tasks, :order, unique: true
  end
end
