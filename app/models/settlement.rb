class Settlement < ApplicationRecord
  belongs_to :oblast
  belongs_to :district
  belongs_to :aiyl_aimak
end
