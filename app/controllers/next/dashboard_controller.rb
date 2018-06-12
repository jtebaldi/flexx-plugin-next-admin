class Next::DashboardController < CamaleonCms::CamaleonController
  layout "flexx_next_admin"

  def index
    @active_contacts = current_site.contacts.active
  end

  def settings
  end

  def crm
  end

  def media
  end

  def messaging
  end

  def conversations_email
  end

  def conversations_text
  end

  def gyms
  end

  def website
  end
end