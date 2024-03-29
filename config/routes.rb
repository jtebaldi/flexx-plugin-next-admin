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
          resources :campaigns
          resources :dashboard
          resources :settings

          namespace :website do
            root to: :index
            get :new_page
          end

          get "/crm" => "dashboard#crm"
          get "/media" => "dashboard#media"
          get "/messaging" => "dashboard#messaging"
          get "/conversations-email" => "dashboard#conversations_email"
          get "/gyms" => "dashboard#gyms"
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
