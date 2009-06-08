ActionController::Routing::Routes.draw do |map|
  map.resources :dics
  map.root :controller => "dics"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
