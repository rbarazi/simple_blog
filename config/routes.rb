ActionController::Routing::Routes.draw do |map|
  map.resources :posts, :has_many => :comments
  map.resources :categories

  map.root :controller => 'posts', :action => 'index'
end
