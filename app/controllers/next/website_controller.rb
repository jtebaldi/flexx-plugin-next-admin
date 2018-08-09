class Next::WebsiteController < CamaleonCms::CamaleonController
  layout 'flexx_next_admin'

  def index
  end

  def new_page
    render :new_page, layout: 'contentbox'
  end
end
