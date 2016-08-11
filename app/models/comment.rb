class Comment < ActiveRecord::Base
	belongs_to :campground
	belongs_to :user
	validates :campground, presence: true
	validates :user, presence: true
	validates :data, presence: true, length: {minimum: 3, maximum: 30}
end