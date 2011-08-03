require 'test_helper'

class PrintProductsControllerTest < ActionController::TestCase
  setup do
    @print_product = print_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:print_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create print_product" do
    assert_difference('PrintProduct.count') do
      post :create, :print_product => @print_product.attributes
    end

    assert_redirected_to print_product_path(assigns(:print_product))
  end

  test "should show print_product" do
    get :show, :id => @print_product.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @print_product.to_param
    assert_response :success
  end

  test "should update print_product" do
    put :update, :id => @print_product.to_param, :print_product => @print_product.attributes
    assert_redirected_to print_product_path(assigns(:print_product))
  end

  test "should destroy print_product" do
    assert_difference('PrintProduct.count', -1) do
      delete :destroy, :id => @print_product.to_param
    end

    assert_redirected_to print_products_path
  end
end
