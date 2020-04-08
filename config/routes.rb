Rails.application.routes.draw do
  
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :restaurants, only: %i(inde create show)
    end
  end

end
