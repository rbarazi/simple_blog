class Category < ActiveRecord::Base
  has_many :posts
  
  validates_presence_of :name_en, :name_ar, :if => :blank_name
  
  def name
    send('name_'+I18n.locale.to_s)
  end

  def name=(value)
    send('name_'+I18n.locale.to_s+'=', value)
  end
  
  private
    def blank_name
      name_ar.blank? and name_en.blank?
    end
end
