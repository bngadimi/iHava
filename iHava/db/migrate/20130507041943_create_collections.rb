class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
	  t.integer :user_id    
      t.string :name
      t.string :tags
      t.string :items

      t.timestamps
    end
    add_index :collections, [:user_id, :created_at]
  end
end
