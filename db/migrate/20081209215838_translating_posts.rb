class TranslatingPosts < ActiveRecord::Migration
  def self.up
    rename_column :posts, :title, :title_ar
    add_column :posts, :title_en, :string
    rename_column :posts, :body, :body_ar
    add_column :posts, :body_en, :text
  end

  def self.down
    remove_column :posts, :body_en
    rename_column :posts, :body_ar, :body
    remove_column :posts, :title_en
    rename_column :posts, :title_ar, :title
  end
end
