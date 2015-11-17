class SetupContactsProperly < ActiveRecord::Migration
  def change
    create_table :contacts, force: true do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :user_id, null: false

      t.timestamps
    end

    add_index(:contacts, :name)
    add_index(:contacts, :email, unique: true)
    add_index(:contacts, :user_id)
  end

end
