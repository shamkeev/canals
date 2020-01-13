class Oblast < ApplicationRecord
  has_many :districts, dependent: :destroy
  has_many :aiyl_aimaks, dependent: :destroy
  has_many :settlements, dependent: :destroy
  has_many :infra_projects, dependent: :destroy
end
