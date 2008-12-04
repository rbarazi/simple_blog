ActionController::Routing::Routes.draw do |map|
  map.resources :posts, :has_many => :comments, :path_prefix => ":locale"
  map.resources :categories, :path_prefix => ":locale"
  map.locale ':locale', :controller => 'posts', :action => 'index'
  
  map.root :controller => 'posts', :action => 'index', :locale => I18n.default_locale
end
