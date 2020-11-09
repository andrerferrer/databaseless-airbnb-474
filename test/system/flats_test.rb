require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the index of flats (the home page)" do
    visit '/'
    assert_selector "h1", text: "Fake Airbnb"
  end
end
