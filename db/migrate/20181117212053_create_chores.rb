class CreateChores < ActiveRecord::Migration[5.2]
  def change
    create_table :chores do |t|
      t.integer :assign_to
      t.boolean :complete, default: false 
      t.string :task
      t.integer :category_id 
      t.integer :tag_id
      t.timestamps
    end
  end
end
