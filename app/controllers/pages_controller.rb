class PagesController < ApplicationController
  before_action :set_skills, only: [:home, :about]

  def home
  	@posts = Blog.all
  end

  def about

  end

  def contact
  end

  def tech_news
  	@tweets = SocialTool.twitter_search
  end

  private

  def set_skills
    @skills = Skill.all
  end

end
