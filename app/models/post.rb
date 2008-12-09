class Post < ActiveRecord::Base
  belongs_to :category
  has_many   :comments
  
  validates_presence_of :category_id
  
  validates_presence_of :title_en, :title_ar, :if => :blank_title
  validates_presence_of :body_en, :body_ar, :if => :blank_body
  
  def title
    send('title_'+I18n.locale.to_s)
  end

  def title=(value)
    send('title_'+I18n.locale.to_s+'=', value)
  end
  
  def body
    send('body_'+I18n.locale.to_s)
  end

  def body=(value)
    send('body_'+I18n.locale.to_s+'=', value)
  end
  
  private
    def blank_title
      title_ar.blank? and title_en.blank?
    end
  
    def blank_body
      body_ar.blank? and body_en.blank?
    end
  
end
