class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :users
  #has_many :必要through 
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255}
end
