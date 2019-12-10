class PurchaseMailer < ApplicationMailer
 default from: 'amazzolawebdev@gmail.com'
  def purchase_send(admin)
    @admin = admin
    mail(to: "amazzolaphoto@gmail.com", subject: "new order")
  end
end
