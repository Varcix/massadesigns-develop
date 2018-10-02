Rails.application.routes.draw do
  use_doorkeeper

  post '/email' => 'pages#email'

  root to: 'visitors#index'

end