require 'test_helper'

class ActivityPhotosControllerTest < ActionController::TestCase
  setup do
    @activity_photo = activity_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activity_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity_photo" do
    assert_difference('ActivityPhoto.count') do
      post :create, activity_photo: @activity_photo.attributes
    end

    assert_redirected_to activity_photo_path(assigns(:activity_photo))
  end

  test "should show activity_photo" do
    get :show, id: @activity_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activity_photo
    assert_response :success
  end

  test "should update activity_photo" do
    put :update, id: @activity_photo, activity_photo: @activity_photo.attributes
    assert_redirected_to activity_photo_path(assigns(:activity_photo))
  end

  test "should destroy activity_photo" do
    assert_difference('ActivityPhoto.count', -1) do
      delete :destroy, id: @activity_photo
    end

    assert_redirected_to activity_photos_path
  end
end
