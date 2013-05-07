class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :id
      t.string :url

      t.timestamps
    end
  end
end
