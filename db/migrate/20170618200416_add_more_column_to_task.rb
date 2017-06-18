class AddMoreColumnToTask < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :description, :text
    remove_column :tasks, :clue


    add_column :tasks, :clue1, :text
    add_column :tasks, :clue2, :text
    add_column :tasks, :clue3, :text
    add_column :tasks, :clue_timer, :integer
    add_column :tasks, :answer_check, :boolean, default: false
    add_column :tasks, :answer_comment, :text
    add_column :tasks, :skip_comment, :text
  end
end
