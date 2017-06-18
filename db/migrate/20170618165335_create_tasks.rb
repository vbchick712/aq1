class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :clue
      t.string :answer
      t.belongs_to :quest, index: true

      t.timestamps
    end
  end
end
