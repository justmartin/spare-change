Rails.application.routes.draw do
  root "search#index"
  get "/search" => "results#index"
end
