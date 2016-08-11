class Campground < ActiveRecord::Base
	
	def to_param
		"#{id} #{name}".parameterize
	end
	
	belongs_to :user
	
	has_many :comments
	
	validates :user, presence: true
	
	validates :name, presence: true, length: {minimum: 3, maximum: 30},
		uniqueness: {case_sensitive: false}

	validates :url, presence: true, length: {minimum: 10, maximum: 150}

	validates :description, presence: true, length: {minimum: 10, maximum: 800}

	validate :url_valid
	
	protected
	
		def url_valid
			if self.url.downcase.include?(" ")
				errors.add(:url, "Invalid url.")
			end
		end
end