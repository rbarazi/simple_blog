module ApplicationHelper
  def locale_link
    if I18n.locale == 'ar'
      link_to 'English', url_for(:overwrite_params => {:locale => :en}), :class => 'locale_link'
    else
      link_to 'عربي', url_for(:overwrite_params => {:locale => :ar}), :class => 'locale_link'
    end
  end
end
