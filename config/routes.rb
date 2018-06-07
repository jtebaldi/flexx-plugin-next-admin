Rails.application.routes.draw do

    scope PluginRoutes.system_info["relative_url_root"] do
      scope '(:locale)', locale: /#{PluginRoutes.all_locales}/, :defaults => {  } do
        # frontend
        namespace :plugins do
          namespace 'flexx_plugin_next_admin' do
            get 'index' => 'front#index'
          end
        end
      end

      #Admin Panel
      scope :admin, as: 'admin', path: PluginRoutes.system_info['admin_path_name'] do
        namespace :next do
          resources :tasks
          resources :campaigns
          resources :dashboard
          get "/settings" => "dashboard#settings"
          get "/crm" => "dashboard#crm"
          get "/media" => "dashboard#media"
          get "/message-center" => "dashboard#messaging"
          get "/gyms" => "dashboard#gyms"
          get "/website" => "dashboard#website"
        end

        namespace 'plugins' do
          namespace 'flexx_plugin_next_admin' do
            controller :admin do
              get :index
              get :settings
              post :save_settings
            end
          end
        end
      end

      # main routes
      #scope 'flexx_plugin_next_admin', module: 'plugins/flexx_plugin_next_admin/', as: 'flexx_plugin_next_admin' do
      #  Here my routes for main routes
      #end
    end
  end
