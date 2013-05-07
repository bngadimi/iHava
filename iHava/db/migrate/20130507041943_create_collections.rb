class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name
      t.array :tags
      t.array :items

      t.timestamps
    end
  end
end
