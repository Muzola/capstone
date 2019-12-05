class User < ApplicationRecord
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :products
has_many :purchases
has_many :purchased_products, through: :purchases, source: :product

def purchased?(product)
  return purchased_products.include?(product)
end

end
