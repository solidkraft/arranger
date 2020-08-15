Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :calendars, only: [] do
        resources :events, only: :create
      end
    end
  end
end
