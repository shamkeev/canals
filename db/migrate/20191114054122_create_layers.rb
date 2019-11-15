class CreateLayers < ActiveRecord::Migration[6.0]
  def change
    create_table :layers do |t|
      t.string :title
      t.string :layer_type
      t.text :json
      t.references :infra_project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
