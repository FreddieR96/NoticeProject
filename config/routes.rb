Rails.application.routes.draw do


 get 'backend/home'
 get 'backend/menu'
root 'main#home'
get 'search/alltime', to: 'main#alltime', as: :alltime_search
get 'search/lastmonth', to: 'main#lastmonth', as: :lastmonth_search
get 'search/lastweek', to: 'main#lastweek', as: :lastweek_search
get 'search', to: 'main#search', as: :search
get 'archive', to: 'main#archive', as: :archive
resources :notices, except: [:index, :new]
resources :sessions, only: [:new, :create, :destroy]
get 'searchresults', to: 'main#searchresults'
get 'addreport/:notice_id/:admin_id/:zetype', to: 'reports#add', as: :add_report
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
