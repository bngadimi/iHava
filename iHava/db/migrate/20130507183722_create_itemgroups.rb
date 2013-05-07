class CreateItemgroups < ActiveRecord::Migration
  def change
    create_table :itemgroups do |t|
      t.string :name
      t.string :description
      t.integer :user_id

      t.timestamps
    end
    add_index :itemgroups, [:user_id, :created_at]
  end
end
