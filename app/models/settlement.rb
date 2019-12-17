class Settlement < ApplicationRecord
  belongs_to :oblast
  belongs_to :district
  belongs_to :aiyl_aimak

  has_many :infra_projects, dependent: :destroy
end
