class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.boolean :role, default: false

      t.timestamps
    end
  end
end
