class CreateOblasts < ActiveRecord::Migration[6.0]
  def change
    create_table :oblasts do |t|
      t.string :name
      t.string :soate

      t.timestamps
    end
  end
end
