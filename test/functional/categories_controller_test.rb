require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category" do
    assert_difference('Category.count') do
      post :create, :category => valid_category_attributes
    end

    assert_redirected_to category_path(assigns(:category))
  end

  test "should show category" do
    get :show, :id => categories(:lorem).id
    assert_response :success
    assert_template 'posts/index'
  end

  test "should get edit" do
    get :edit, :id => categories(:lorem).id
    assert_response :success
  end

  test "should update category" do
    put :update, :id => categories(:lorem).id, :category => valid_category_attributes
    assert_redirected_to category_path(assigns(:category))
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete :destroy, :id => categories(:lorem).id
    end

    assert_redirected_to categories_path
  end
  
  private
    def valid_category_attributes(options={})
      {:name => 'Fun'}
    end
end
