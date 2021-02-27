require "application_system_test_case"

class BikersTest < ApplicationSystemTestCase
  setup do
    @biker = bikers(:one)
  end

  test "visiting the index" do
    visit bikers_url
    assert_selector "h1", text: "Bikers"
  end

  test "creating a Biker" do
    visit bikers_url
    click_on "New Biker"

    fill_in "Avatar", with: @biker.avatar
    fill_in "City", with: @biker.city
    fill_in "Firstname", with: @biker.firstname
    fill_in "Geolocation", with: @biker.geolocation
    fill_in "Lastname", with: @biker.lastname
    fill_in "State", with: @biker.state
    click_on "Create Biker"

    assert_text "Biker was successfully created"
    click_on "Back"
  end

  test "updating a Biker" do
    visit bikers_url
    click_on "Edit", match: :first

    fill_in "Avatar", with: @biker.avatar
    fill_in "City", with: @biker.city
    fill_in "Firstname", with: @biker.firstname
    fill_in "Geolocation", with: @biker.geolocation
    fill_in "Lastname", with: @biker.lastname
    fill_in "State", with: @biker.state
    click_on "Update Biker"

    assert_text "Biker was successfully updated"
    click_on "Back"
  end

  test "destroying a Biker" do
    visit bikers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Biker was successfully destroyed"
  end
end
