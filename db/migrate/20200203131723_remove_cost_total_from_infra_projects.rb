class RemoveCostTotalFromInfraProjects < ActiveRecord::Migration[6.0]
  def change

    remove_column :infra_projects, :cost_total, :decimal
  end
end
