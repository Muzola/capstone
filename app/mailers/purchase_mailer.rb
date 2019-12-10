class PurchaseMailer < ApplicationMailer
 default from: 'amazzolawebdev@gmail.com'
  def purchase_send(purchase)
    puts "-------------------------------------------------------------------------------------"
    puts "help me"
    @purchase = purchase
    minus_1 = purchase.product
    minus_1.stock -= 1
    minus_1.save

    mail(to: "amazzolaphoto@gmail.com", subject: "new order")
  end
end
