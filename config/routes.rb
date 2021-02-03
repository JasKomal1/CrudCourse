Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/courses/index", to: "courses#index", as: "courses"
  get "/courses/new", to: "courses#new", as: "courses_new"
  post "/courses", to: "courses#create"
  get "/courses/:id", to: "courses#show", as: "course"
  get "/courses/:id/edit", to: "courses#edit", as: "edit_course"
  patch "/courses/:id", to: "courses#update"
  delete "/courses/:id", to: "courses#destroy" 

end
