module TopicsHelper

	def not_topics
		request.original_fullpath != '/topics'
	end
	
end
