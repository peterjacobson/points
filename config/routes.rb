Rails.application.routes.draw do

  devise_for :groups
  devise_for :users

  root to: 'pages#index'

  post '/points/:id/upvote', to: 'points#upvote', as: 'upvote_point'
  post '/points/:id/downvote', to: 'points#downvote', as: 'downvote_point'

  post '/contributions/:id/upvote', to: 'contributions#upvote', as: 'upvote_contribution'
  post '/contributions/:id/downvote', to: 'contributions#downvote', as: 'downvote_contribution'

  post '/comments/:id/upvote', to: 'comments#upvote', as: 'upvote_comment'
  post '/comments/:id/downvote', to: 'comments#downvote', as: 'downvote_comment'

  get '/points/:id/contributions', to: 'contributions#index'

  post '/points', to: 'points#create'
  post '/contributions', to: 'contributions#create'
  post '/comments', to: 'comments#create'

end


