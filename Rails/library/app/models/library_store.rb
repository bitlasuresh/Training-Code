class LibraryStore < ApplicationRecord
	has_many :books
	belongs_to :area
end
