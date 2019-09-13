class Area < ApplicationRecord
	belongs_to :city
	has_many :library_stores
end
