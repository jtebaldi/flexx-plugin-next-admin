module Plugins::FlexxPluginNextAdmin::MainHelper
  def self.included(klass)
    # klass.helper_method [:my_helper_method] rescue "" # here your methods accessible from views
  end

  # here all actions on going to active
  # you can run sql commands like this:
  # results = ActiveRecord::Base.connection.execute(query);
  # plugin: plugin model
  def flexx_plugin_next_admin_on_active(plugin)
  end

  # here all actions on going to inactive
  # plugin: plugin model
  def flexx_plugin_next_admin_on_inactive(plugin)
  end

  # here all actions to upgrade for a new version
  # plugin: plugin model
  def flexx_plugin_next_admin_on_upgrade(plugin)
  end

  # hook listener to add settings link below the title of current plugin (if it is installed)
  # args: {plugin (Hash), links (Array)}
  # permit to add unlimmited of links...
  def flexx_plugin_next_admin_on_plugin_options(args)
    args[:links] << link_to('Settings', admin_plugins_flexx_plugin_next_admin_settings_path)
  end

  def flexx_plugin_next_admin_on_render_admin_dashboard(args) # methods dont need to have these big names
    args.tap do |a|
      a[:layout] = "plugins/flexx_plugin_next_admin/layouts/flexx_next_admin"
      a[:render] = "plugins/flexx_plugin_next_admin/flexx_next_admin/dashboard"
    end
  end
end
