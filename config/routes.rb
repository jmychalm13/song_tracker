Rails.application.routes.draw do
  # index
  get "/songs" => "songs#index"

  post "/songs" => "songs#create"

  get "/songs/:id" => "songs#show"
end
