Rails.application.routes.draw do
  # index
  get "/songs" => "songs#index"
end
