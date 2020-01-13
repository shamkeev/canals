class InfraProject < ApplicationRecord
  belongs_to :oblast
  belongs_to :district
  belongs_to :aiyl_aimak, optional: true
  belongs_to :district
  belongs_to :settlement, optional: true

  has_many :layers, dependent: :destroy

  validates :start_date, presence: true
  validates :status, presence: true
end
