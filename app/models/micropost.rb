class Micropost < ActiveRecord::Base
	belongs_to :usen
	validates :content, length: {maximum: 140}
end
