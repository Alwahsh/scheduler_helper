require 'test_helper'

class YearClassesControllerTest < ActionController::TestCase
  setup do
    @year_class = year_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:year_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create year_class" do
    assert_difference('YearClass.count') do
      post :create, year_class: { code: @year_class.code, type: @year_class.type }
    end

    assert_redirected_to year_class_path(assigns(:year_class))
  end

  test "should show year_class" do
    get :show, id: @year_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @year_class
    assert_response :success
  end

  test "should update year_class" do
    patch :update, id: @year_class, year_class: { code: @year_class.code, type: @year_class.type }
    assert_redirected_to year_class_path(assigns(:year_class))
  end

  test "should destroy year_class" do
    assert_difference('YearClass.count', -1) do
      delete :destroy, id: @year_class
    end

    assert_redirected_to year_classes_path
  end
end
