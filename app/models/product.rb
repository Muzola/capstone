class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :purchases

  has_many :images

  validates :title, presence: true
  validates :description, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :stock, presence: true, numericality: {greater_than_or_equal_to: 0}
end
