class AiylAimak < ApplicationRecord
  belongs_to :oblast
  belongs_to :district

  has_many :settlements
  has_many :infra_projects
end
