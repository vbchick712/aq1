class AddForeignKeyToRole < ActiveRecord::Migration[5.1]
  def change
    add_reference :roles, :user, foreign_key: true
    add_reference :roles, :quest, foreign_key: true
  end
end
