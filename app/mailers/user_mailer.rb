class UserMailer < ApplicationMailer
	default :from => "hardikhardiya@gmail.com"
  
  def registration_confirmation(user)
    @user = user
    # attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => @user.email, :subject => "Registered!")
  end
  def order_confirmation(order, user)
  	@order = order
  	mail(:to => user.email, :subject => "Confirmed! Order Id - #{order.id}")
  end	
end
