class JungleMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'
  def payment_email(order)
    @order = order
    mail(to: @order.email, subject: @order.id) do |format|
      format.html { render 'payment_email' }
      end
  end
end
