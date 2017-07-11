class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validates :product, presence: true
  validates :user, presence: true
  validates :rating, presence: true, length: { minimum: 1, maximum: 5}
  validates :description, presence: true
end
