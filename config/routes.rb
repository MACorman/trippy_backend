Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html\
  resources :users, :schedules, :destinations, :destination_schedules, :user_schedules
end
