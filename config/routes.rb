ActionController::Routing::Routes.draw do |map|
  #map.connect '/api', :controller => 'dics'
  #map.api 'api/:controller/:action/:id'
  #map.api 'api/:controller/:action/:id.format'
  
  #map.dics '/', :controller => 'dics', :action => 'index'
  #map.resources 'api', :controller => 'dics'
  map.resources :dics
  map.root :controller => "dics"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
