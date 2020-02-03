class InfraProjectsOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :infra_projects_owners, id: false do |t|
      t.belongs_to :infra_project
      t.belongs_to :owner
    end
  end
end
