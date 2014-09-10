class Location < ActiveRecord::Base

	validates :streetnumber, presence: true
	validates :streetname, presence: true

	belongs_to :category

end
