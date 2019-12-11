class District < ApplicationRecord
  belongs_to :oblast

  has_many :aiyl_aimaks
  has_many :settlements
  has_many :infra_projects
end
