class TranslatingCategories < ActiveRecord::Migration
  def self.up
    rename_column :categories, :name, :name_en
    add_column :categories, :name_ar, :string
  end

  def self.down
    remove_column :categories, :name_ar
    rename_column :categories, :name_en, :name
  end
end
