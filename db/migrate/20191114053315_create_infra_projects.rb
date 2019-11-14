class CreateInfraProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :infra_projects do |t|
      t.string :title
      t.string :status
      t.date :start_date
      t.date :end_date
      t.text :desc

      t.timestamps
    end
  end
end
