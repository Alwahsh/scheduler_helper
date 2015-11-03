require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { code: @course.code, lecs_per_week: @course.lecs_per_week, lecture_length: @course.lecture_length, name: @course.name, secs_per_week: @course.secs_per_week, section_length: @course.section_length, type: @course.type }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    patch :update, id: @course, course: { code: @course.code, lecs_per_week: @course.lecs_per_week, lecture_length: @course.lecture_length, name: @course.name, secs_per_week: @course.secs_per_week, section_length: @course.section_length, type: @course.type }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
