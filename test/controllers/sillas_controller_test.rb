require 'test_helper'

class SillasControllerTest < ActionController::TestCase
  setup do
    @silla = sillas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sillas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create silla" do
    assert_difference('Silla.count') do
      post :create, silla: {  }
    end

    assert_redirected_to silla_path(assigns(:silla))
  end

  test "should show silla" do
    get :show, id: @silla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @silla
    assert_response :success
  end

  test "should update silla" do
    patch :update, id: @silla, silla: {  }
    assert_redirected_to silla_path(assigns(:silla))
  end

  test "should destroy silla" do
    assert_difference('Silla.count', -1) do
      delete :destroy, id: @silla
    end

    assert_redirected_to sillas_path
  end
end
