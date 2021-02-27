require 'test_helper'

class BikersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @biker = bikers(:one)
  end

  test "should get index" do
    get bikers_url
    assert_response :success
  end

  test "should get new" do
    get new_biker_url
    assert_response :success
  end

  test "should create biker" do
    assert_difference('Biker.count') do
      post bikers_url, params: { biker: { avatar: @biker.avatar, city: @biker.city, firstname: @biker.firstname, geolocation: @biker.geolocation, lastname: @biker.lastname, state: @biker.state } }
    end

    assert_redirected_to biker_url(Biker.last)
  end

  test "should show biker" do
    get biker_url(@biker)
    assert_response :success
  end

  test "should get edit" do
    get edit_biker_url(@biker)
    assert_response :success
  end

  test "should update biker" do
    patch biker_url(@biker), params: { biker: { avatar: @biker.avatar, city: @biker.city, firstname: @biker.firstname, geolocation: @biker.geolocation, lastname: @biker.lastname, state: @biker.state } }
    assert_redirected_to biker_url(@biker)
  end

  test "should destroy biker" do
    assert_difference('Biker.count', -1) do
      delete biker_url(@biker)
    end

    assert_redirected_to bikers_url
  end
end
