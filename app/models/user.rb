class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  # after_create :send_email
  validates :fname, presence: true
  validates :lname, presence: true
  validates :credit_card, presence: true, length: { minimum: 16, maximum: 16 }
  validates :cvv, presence: true, length: { minimum: 3, maximum: 3 }
  validates :expiration, presence: true
  validates :address, presence: true
  validate :validate_age

  private

  def validate_age
      if age.present? && age < 18
          errors.add(:age, 'Should be over 18 years old.')
      end
  end

	 def send_email
	   # UserMailer.registration_confirmation(self).deliver
	 end

	
end
