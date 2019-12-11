class AddZindexToLayers < ActiveRecord::Migration[6.0]
  def change
    add_column :layers, :zindex, :integer
  end
end
