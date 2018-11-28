class MovieList < ApplicationRecord
	has_many :shows
	has_many :discounts
	mount_uploader :image, ImageUploader
end
