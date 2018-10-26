require "application_system_test_case"

class InstituesTest < ApplicationSystemTestCase
  setup do
    @institue = institues(:one)
  end

  test "visiting the index" do
    visit institues_url
    assert_selector "h1", text: "Institues"
  end

  test "creating a Institue" do
    visit institues_url
    click_on "New Institue"

    fill_in "Contact", with: @institue.contact
    fill_in "Direction", with: @institue.direction
    fill_in "District", with: @institue.district
    fill_in "Email", with: @institue.email
    fill_in "Name", with: @institue.name
    fill_in "Phone", with: @institue.phone
    click_on "Create Institue"

    assert_text "Institue was successfully created"
    click_on "Back"
  end

  test "updating a Institue" do
    visit institues_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @institue.contact
    fill_in "Direction", with: @institue.direction
    fill_in "District", with: @institue.district
    fill_in "Email", with: @institue.email
    fill_in "Name", with: @institue.name
    fill_in "Phone", with: @institue.phone
    click_on "Update Institue"

    assert_text "Institue was successfully updated"
    click_on "Back"
  end

  test "destroying a Institue" do
    visit institues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Institue was successfully destroyed"
  end
end
