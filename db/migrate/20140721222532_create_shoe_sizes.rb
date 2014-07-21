class CreateShoeSizes < ActiveRecord::Migration
  def up
    create_table :shoe_sizes do |t|
      t.string :size_number
      t.integer :size_in_mm

      t.boolean :male
      t.boolean :female

      t.timestamps
    end

    #ShoeSize.create_translation_table!
  end

  def down
    drop_table :shoe_sizes
    #ShoeSize.drop_translation_table!
  end
end
