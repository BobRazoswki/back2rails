Rails.application.routes.draw do

root to: "pages#home"

resources :documents 
resources :document

end
