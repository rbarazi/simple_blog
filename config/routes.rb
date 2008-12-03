ActionController::Routing::Routes.draw do |map|
  map.resources :posts, :has_many => :comments, :path_prefix => "#{(I18n.locale || I18n.deafault_locale)}"
  map.resources :categories, :path_prefix => "#{(I18n.locale || I18n.deafault_locale)}"
  map.locale ':locale', :controller => 'posts', :action => 'index'
  
  map.root :controller => 'posts', :action => 'index'
end
