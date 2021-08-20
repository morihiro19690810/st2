Rails.application.routes.draw do
    root "ideas#index"
    get "ideas/reload" => "ideas#index"
    post "/questions/:id/toggle" => "questions#toggle"
    get "/questions/restart" => "questions#restart"
  # get 'questions/index'
  resources :ideas
  resources :questions

  # get 'ideas/index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
