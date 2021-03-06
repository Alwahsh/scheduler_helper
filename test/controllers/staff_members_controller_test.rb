require 'test_helper'

class StaffMembersControllerTest < ActionController::TestCase
  setup do
    @staff_member = staff_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staff_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff_member" do
    assert_difference('StaffMember.count') do
      post :create, staff_member: { code: @staff_member.code, email: @staff_member.email, max_gap: @staff_member.max_gap, max_hours_per_day: @staff_member.max_hours_per_day, min_gap: @staff_member.min_gap, name: @staff_member.name, score: @staff_member.score, type: @staff_member.type }
    end

    assert_redirected_to staff_member_path(assigns(:staff_member))
  end

  test "should show staff_member" do
    get :show, id: @staff_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff_member
    assert_response :success
  end

  test "should update staff_member" do
    patch :update, id: @staff_member, staff_member: { code: @staff_member.code, email: @staff_member.email, max_gap: @staff_member.max_gap, max_hours_per_day: @staff_member.max_hours_per_day, min_gap: @staff_member.min_gap, name: @staff_member.name, score: @staff_member.score, type: @staff_member.type }
    assert_redirected_to staff_member_path(assigns(:staff_member))
  end

  test "should destroy staff_member" do
    assert_difference('StaffMember.count', -1) do
      delete :destroy, id: @staff_member
    end

    assert_redirected_to staff_members_path
  end
end
