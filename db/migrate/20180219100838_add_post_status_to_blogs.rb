class AddPostStatusToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :status, :integer, default: 0
  end
end

# rails g migration add_post_status_to_blogs status:integer