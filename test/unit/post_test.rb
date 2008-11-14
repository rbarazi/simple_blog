require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "requires category" do
    post = valid_post(:category_id => "")
    assert_no_difference 'Post.count' do
      post.save
    end
    assert_not_nil post.errors.on(:category_id)
  end
  
  test "requires body" do
    post = valid_post(:body => "")
    assert_no_difference 'Post.count' do
      post.save
    end
    assert_not_nil post.errors.on(:body)
  end
  
  test "requires title" do
    post = valid_post(:title => "")
    assert_no_difference 'Post.count' do
      post.save
    end
    assert_not_nil post.errors.on(:title)
  end
  
  private
    def valid_post(options={})
      Post.new({:category_id => categories(:lorem).id, :body => "great post"}.merge(options))
    end
end
