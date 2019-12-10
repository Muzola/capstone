class Purchase < ApplicationRecord
  belongs_to :product
  belongs_to :user
  after_create :purchase_send
  
  def purchase_send
    PurchaseMailer.purchase_send(self).deliver
  end
end
