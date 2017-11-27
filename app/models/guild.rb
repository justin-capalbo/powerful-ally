class Guild < ApplicationRecord
  belongs_to :officer 

  validates :name, presence: true, length: { maximum: 36 }
  validates :officer_id, presence: true
end
