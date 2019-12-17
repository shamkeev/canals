class AiylAimak < ApplicationRecord
  belongs_to :oblast
  belongs_to :district

  has_many :settlements, dependent: :destroy
  has_many :infra_projects, dependent: :destroy
end
