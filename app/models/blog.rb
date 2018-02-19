class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1 }
	# Blog.status = draft/published 
	# now when a new blog is created it has status: 'draft'
	# and is updated with Blog.last.published! to get status: 'published'
	# use Blog.published to only view records with status: 'published'
	extend FriendlyId
	friendly_id :title, use: :slugged
	# will use Blog.title as slug url index
end