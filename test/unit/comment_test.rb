require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  test "requires post" do
    comment = valid_comment(:post_id => "")
    assert_no_difference 'Comment.count' do
      comment.save
    end
    assert_not_nil comment.errors.on(:post_id)
  end
  
  test "requires body" do
    comment = valid_comment(:body => "")
    assert_no_difference 'Comment.count' do
      comment.save
    end
    assert_not_nil comment.errors.on(:body)
  end
  
  private
    def valid_comment(options={})
      Comment.new({:post_id => posts(:lorem_ipsum).id, :body => "great post"}.merge(options))
    end
end
