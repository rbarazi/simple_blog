require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "should create comment" do
    assert_difference('Comment.count') do
      xhr :post, :create, :post_id => posts(:lorem_ipsum).id,
                          :comment => valid_comment_attributes
    end

    assert_template 'create.rjs'
    assert_select_rjs :insert, :bottom
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      xhr :delete, :destroy, :post_id => posts(:lorem_ipsum).id,
                             :id => comments(:bad_post).id
    end

    assert_template 'destroy.rjs'
  end
  
  private
    def valid_comment_attributes(options={})
      {:body => 'Great post.. thank you'}.merge(options)
    end
end
