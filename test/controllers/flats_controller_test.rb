require 'test_helper'

class FlatsControllerTest < ActionController::TestCase
  setup do
    @flat = flats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flat" do
    assert_difference('Flat.count') do
      post :create, flat: { area_m: @flat.area_m, available_from: @flat.available_from, balcony: @flat.balcony, description: @flat.description, description_longer: @flat.description_longer, detail_url: @flat.detail_url, elevator: @flat.elevator, first_seen_at: @flat.first_seen_at, flat_size: @flat.flat_size, furnished: @flat.furnished, image_url: @flat.image_url, location_address: @flat.location_address, marked_as_crap_user1: @flat.marked_as_crap_user1, marked_as_crap_user2: @flat.marked_as_crap_user2, podlazi: @flat.podlazi, poplatky: @flat.poplatky, price: @flat.price, terrace: @flat.terrace, title: @flat.title, unique_id: @flat.unique_id, updated_at: @flat.updated_at }
    end

    assert_redirected_to flat_path(assigns(:flat))
  end

  test "should show flat" do
    get :show, id: @flat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flat
    assert_response :success
  end

  test "should update flat" do
    patch :update, id: @flat, flat: { area_m: @flat.area_m, available_from: @flat.available_from, balcony: @flat.balcony, description: @flat.description, description_longer: @flat.description_longer, detail_url: @flat.detail_url, elevator: @flat.elevator, first_seen_at: @flat.first_seen_at, flat_size: @flat.flat_size, furnished: @flat.furnished, image_url: @flat.image_url, location_address: @flat.location_address, marked_as_crap_user1: @flat.marked_as_crap_user1, marked_as_crap_user2: @flat.marked_as_crap_user2, podlazi: @flat.podlazi, poplatky: @flat.poplatky, price: @flat.price, terrace: @flat.terrace, title: @flat.title, unique_id: @flat.unique_id, updated_at: @flat.updated_at }
    assert_redirected_to flat_path(assigns(:flat))
  end

  test "should destroy flat" do
    assert_difference('Flat.count', -1) do
      delete :destroy, id: @flat
    end

    assert_redirected_to flats_path
  end
end
