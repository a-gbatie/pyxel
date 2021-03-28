class CreateAdventures < ActiveRecord::Migration[6.1]
  def change
    create_table :adventures do |t|
      t.string :title
      t.string :photo
      t.string :location
      t.string :hashtags
      t.text :description
      t.integer :likes

      t.timestamps
    end
  end
end
