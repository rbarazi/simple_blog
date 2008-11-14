require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  
  test "requires name" do
    category = valid_category(:name => "")
    assert_no_difference 'Category.count' do
      category.save
    end
    assert_not_nil category.errors.on(:name)
  end
  
  private
    def valid_category(options={})
      Category.new({:name => "New"}.merge(options))
    end
end
