class AddColumnToQuest < ActiveRecord::Migration[5.1]
  def change
    change_column :quests, :description, :text
    add_column :quests, :invite_msg, :text
    add_column :quests, :start_msg, :text
    add_column :quests, :final_msg, :text
  end
end
