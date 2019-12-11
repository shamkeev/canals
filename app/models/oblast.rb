class Oblast < ApplicationRecord
  has_many :districts
  has_many :aiyl_aimaks
  has_many :settlements
  has_many :infra_projects
end
