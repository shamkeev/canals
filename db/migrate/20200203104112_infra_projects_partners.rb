class InfraProjectsPartners < ActiveRecord::Migration[6.0]
  def change
    create_table :infra_projects_partners, id: false do |t|
      t.belongs_to :infra_project
      t.belongs_to :partner
    end
  end
end
