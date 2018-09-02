class TopicsController < ApplicationController
	before_action :set_topic, only: [:show]
	before_action :set_sidebar_topics, only: [:index, :show]
	before_action :set_topic_blogs, only: [:show]

	layout "blog"
	access all: [:show, :index], site_admin: :all

  def index
  	@topics = Topic.page(params[:page]).per(3)
  end

  def show
  
  end

  private

  def set_topic
  	@topic = Topic.find(params[:id])
  end

  def set_sidebar_topics
  	@sidebar_topics = []
  	@topics = Topic.all

  	@topics.each do |topic|
  		if topic.blogs.length > 0 
  			@sidebar_topics << topic
  		end
  	end

  	@sidebar_topics
  end

  def set_topic_blogs
  	@blogs = Blog.where(topic_id: params[:id])
  end

  def topic_params
  	params.require(:topic).permit(:title)
  end
end
