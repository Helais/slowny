require 'test_helper'

class DicsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dic" do
    assert_difference('Dic.count') do
      post :create, :dic => { }
    end

    assert_redirected_to dic_path(assigns(:dic))
  end

  test "should show dic" do
    get :show, :id => dics(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => dics(:one).to_param
    assert_response :success
  end

  test "should update dic" do
    put :update, :id => dics(:one).to_param, :dic => { }
    assert_redirected_to dic_path(assigns(:dic))
  end

  test "should destroy dic" do
    assert_difference('Dic.count', -1) do
      delete :destroy, :id => dics(:one).to_param
    end

    assert_redirected_to dics_path
  end
end
