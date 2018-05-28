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

  def actions
  end

  def gyms
  end
end