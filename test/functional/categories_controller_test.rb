require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new, :locale => I18n.locale
    assert_response :success
  end

  test "should create category" do
    assert_difference('Category.count') do
      post :create, :category => valid_category_attributes, :locale => I18n.locale
    end

    assert_redirected_to category_path(:id => assigns(:category), :locale => I18n.locale)
  end

  test "should show category" do
    get :show, :id => categories(:lorem).id, :locale => I18n.locale
    assert_response :success
    assert_template 'posts/index'
  end

  test "should get edit" do
    get :edit, :id => categories(:lorem).id, :locale => I18n.locale
    assert_response :success
  end

  test "should update category" do
    put :update, :id => categories(:lorem).id, :category => valid_category_attributes, :locale => I18n.locale
    assert_redirected_to category_path(:id => assigns(:category), :locale => I18n.locale)
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete :destroy, :id => categories(:lorem).id, :locale => I18n.locale
    end

    assert_redirected_to categories_path(:locale => I18n.locale)
  end
  
  private
    def valid_category_attributes(options={})
      {:name => 'Fun'}
    end
end
