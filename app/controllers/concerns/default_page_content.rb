module DefaultPageContent
	extend ActiveSupport::Concern

	included do 
		before_action :set_page_defaults
	end

  def set_page_defaults
  	@page_title = "DevPort | A Developers Portfolio"
  	@seo_keywords = "Ruby on Rails Portfolio built by a developer for a developer"
  end
end