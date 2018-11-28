class Order < ApplicationRecord
	# after_create :send_order_email

	 def send_order_email
	   # UserMailer.order_confirmation(self, current_user).deliver
	 end
end
