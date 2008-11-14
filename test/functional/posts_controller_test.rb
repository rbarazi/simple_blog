require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, :post => valid_post_attributes
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, :id => posts(:lorem_ipsum).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => posts(:lorem_ipsum).id
    assert_response :success
  end

  test "should update post" do
    put :update, :id => posts(:lorem_ipsum).id, :post => valid_post_attributes
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, :id => posts(:lorem_ipsum).id
    end

    assert_redirected_to posts_path
  end
  
  private
    def valid_post_attributes(options={})
      {:title       => "Great Post", 
       :category_id => categories(:lorem).id, 
       :body        => 'this is my great post'}.merge(options)
    end
end
