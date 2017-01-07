Rails.application.routes.draw do
  root "search#index"
  get "/search" => "results#index"
  get "/results2" => "results#results_2"
  get "/results3" => "results#results_3"
  get "/results4" => "results#results_4"
end
