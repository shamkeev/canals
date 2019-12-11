class CreateSettlements < ActiveRecord::Migration[6.0]
  def change
    create_table :settlements do |t|
      t.references :oblast, null: false, foreign_key: true
      t.references :district, null: false, foreign_key: true
      t.references :aiyl_aimak, null: false, foreign_key: true
      t.string :name
      t.string :soate

      t.timestamps
    end
  end
end
