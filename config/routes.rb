Rails.application.routes.draw do

root to: "pages#home"

resources :documents do
get ':show', to: 'documents#index'
end
end
