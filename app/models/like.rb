class Like < ApplicationRecord
  validates :user_id, uniqueness:{ scope: :property_id } 
  belongs_to :property
  belongs_to :user
end
