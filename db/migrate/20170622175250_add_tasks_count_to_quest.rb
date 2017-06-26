class AddTasksCountToQuest < ActiveRecord::Migration[5.1]
  def change
    add_column :quests, :tasks_count, :integer
  end
end
