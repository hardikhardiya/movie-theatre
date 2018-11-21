class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  # after_create :send_email

	 def send_email
	   # UserMailer.registration_confirmation(self).deliver
	 end

	
end
