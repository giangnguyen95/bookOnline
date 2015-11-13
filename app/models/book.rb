class Book < ActiveRecord::Base
	validates :title,  presence: true, length: {maximum: 100}
	validates :author,  presence: true, length: {maximum: 50}
	validates :description,  presence: true
end
