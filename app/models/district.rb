class District < ApplicationRecord
  belongs_to :oblast

  has_many :aiyl_aimaks, dependent: :destroy
  has_many :settlements, dependent: :destroy
  has_many :infra_projects, dependent: :destroy
end
