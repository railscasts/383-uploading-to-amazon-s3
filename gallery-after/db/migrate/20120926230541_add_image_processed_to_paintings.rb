class AddImageProcessedToPaintings < ActiveRecord::Migration
  def change
    add_column :paintings, :image_processed, :boolean
  end
end
