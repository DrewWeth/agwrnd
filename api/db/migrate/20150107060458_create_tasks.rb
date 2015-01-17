class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :content
      t.boolean :completed, :default => false
      t.integer :user_id
      t.datetime :completed_at
      t.integer :priority, :default => 0

      t.timestamps
    end
  end
end
