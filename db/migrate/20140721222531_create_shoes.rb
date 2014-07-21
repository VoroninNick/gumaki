class CreateShoes < ActiveRecord::Migration
  def up
    create_table :shoes do |t|
      t.boolean :male
      t.boolean :female
      t.string :name
      t.text :full_description
      t.text :short_description
      t.integer :count
      t.string :image

      t.timestamps
    end

    Shoe.create_translation_table!
  end

  def down
    drop_table :shoes
    Shoe.drop_translation_table!
  end
end
