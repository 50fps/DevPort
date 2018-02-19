class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1 }
	# now when a new blog is created it has status: 'draft'
	# and is updated with Blog.last.published! to get status: 'published'
	# use Blog.published to only view records with status: 'published'
	# check status with Blog.last.draft? Blog.last.published?
	extend FriendlyId
	friendly_id :title, use: :slugged
	# will use Blog.title as slug url index
end