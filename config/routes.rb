Rails.application.routes.draw do
  # index
  get "/songs" => "songs#index"

  post "/songs" => "songs#create"
end
