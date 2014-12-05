class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :image
      t.string :description
      t.integer :thumb_up
      t.integer :thumb_down

      t.timestamps
    end
  end
end
