module Placeholder
	extend ActiveSupport::Concern
	
	# Placeholder.image_generator
	def self.image_generator(height:, width:)
		"http://via.placeholder.com/#{height}x#{width}"
	end
end