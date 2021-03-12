Rails.application.routes.draw do

  # resources :meetings
  root 'team_roster#index'
  # resource :calendar, only: [:show], controller: :calendar
  # root to: "calendar#show"
  resources :team_roster  do 
    member do
      get :delete
    end
  end

  resources :calendar  do 
    member do
      get :delete
    end
  end

  resources :commitment  do 
    member do
      get :delete
    end
  end

  resources :event  do 
    member do
      get :delete
      get :name
    end
  end




  # resources :admin do
  #   member do
  #     get :delete
  #   end
  # end
 
  # get 'user/team_roster'
  # get 'user/calendar'
  # get 'user/commitment'
  # get 'user/event'
  # get 'user/new'
  # get 'admin/team_roster'
  # get 'admin/calendar'
  # get 'admin/commitment'
  # get 'admin/event'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
