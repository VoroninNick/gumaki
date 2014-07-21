class CreateShoesAndSizesLinksTable < ActiveRecord::Migration
  def change
    create_table :shoe_sizes_shoes do |t|
      t.belongs_to :shoe
      t.belongs_to :shoe_size
    end
  end
end
