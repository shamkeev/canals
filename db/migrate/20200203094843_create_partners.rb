class CreatePartners < ActiveRecord::Migration[6.0]
  def change
    create_table :partners do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
