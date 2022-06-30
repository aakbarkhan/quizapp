Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  namespace :api do
    namespace :v1 do
      resources :teachers
      get '/signup', to: "teachers#create"
      get '/me', to: "teachers#show"
        resources :quizzes do
          resources :questions
        end
      resources :students

    end
  end
end
    