require 'test_helper'

class SegmentCollectionsControllerTest < ActionController::TestCase
  setup do
    @segment_collection = segment_collections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:segment_collections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create segment_collection" do
    assert_difference('SegmentCollection.count') do
      post :create, segment_collection: {  }
    end

    assert_redirected_to segment_collection_path(assigns(:segment_collection))
  end

  test "should show segment_collection" do
    get :show, id: @segment_collection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @segment_collection
    assert_response :success
  end

  test "should update segment_collection" do
    patch :update, id: @segment_collection, segment_collection: {  }
    assert_redirected_to segment_collection_path(assigns(:segment_collection))
  end

  test "should destroy segment_collection" do
    assert_difference('SegmentCollection.count', -1) do
      delete :destroy, id: @segment_collection
    end

    assert_redirected_to segment_collections_path
  end
end
