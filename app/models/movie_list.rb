class MovieList < ApplicationRecord
	has_many :shows
	has_many :discounts
end
