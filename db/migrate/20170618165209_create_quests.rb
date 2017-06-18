class CreateQuests < ActiveRecord::Migration[5.1]
  def change
    create_table :quests do |t|
      t.string :name
      t.string :description
      t.datetime :start

      t.timestamps
    end
  end
end
