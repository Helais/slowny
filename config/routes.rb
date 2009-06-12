ActionController::Routing::Routes.draw do |map|
  map.signup '/', :controller => 'dics', :action => 'index'
  map.resources :dics
  map.root :controller => "dics"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
