Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Pages routes
  root "pages#show", page: "home"
  get "/:page" => "pages#show"

  get 'admin/dashboard' => 'admin#dashboard'
end