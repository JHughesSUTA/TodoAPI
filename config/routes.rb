Rails.application.routes.draw do
  get "/todos" => "todos#index"
  get "/todos/:id" => "todos#show"
end

