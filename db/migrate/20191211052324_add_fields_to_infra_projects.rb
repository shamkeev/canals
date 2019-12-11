class AddFieldsToInfraProjects < ActiveRecord::Migration[6.0]
  def change
    add_reference :infra_projects, :oblast, index: true
    add_reference :infra_projects, :district, index: true
    add_reference :infra_projects, :aiyl_aimak, index: true
    add_reference :infra_projects, :settlement, index: true
    add_column :infra_projects, :t_length, :decimal
    add_column :infra_projects, :r_length, :decimal
    add_column :infra_projects, :capacity, :string
    add_column :infra_projects, :t_area, :decimal
    add_column :infra_projects, :r_area, :decimal
    add_column :infra_projects, :b_households, :integer
    add_column :infra_projects, :b_total, :integer
    add_column :infra_projects, :b_women, :integer
    add_column :infra_projects, :cost_total, :decimal
    add_column :infra_projects, :c_project, :decimal
    add_column :infra_projects, :c_partners, :decimal
    add_column :infra_projects, :c_total, :decimal
    add_foreign_key :infra_projects, :oblasts
    add_foreign_key :infra_projects, :districts
    add_foreign_key :infra_projects, :aiyl_aimaks
    add_foreign_key :infra_projects, :settlements
  end
end
