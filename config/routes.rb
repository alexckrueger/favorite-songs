Rails.application.routes.draw do
  get "/songs" => "songs#index"
  post "/songs" => "songs#create"
  get "/songs/:id" => "songs#show"
  patch "/songs/:id" => "songs#update"
  delete "/songs/:id" => "songs#destroy"
end

# I got them all right by memory except for the patch method name being update D: I did "edit" at first