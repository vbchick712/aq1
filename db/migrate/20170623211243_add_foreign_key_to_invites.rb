class AddForeignKeyToInvites < ActiveRecord::Migration[5.1]
  def change
      add_reference :invites, :quest, foreign_key: true
  end
end
