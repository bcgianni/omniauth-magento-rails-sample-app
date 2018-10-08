require "application_system_test_case"

class MagentosTest < ApplicationSystemTestCase
  setup do
    @magento = magentos(:one)
  end

  test "visiting the index" do
    visit magentos_url
    assert_selector "h1", text: "Magentos"
  end

  test "creating a Magento" do
    visit magentos_url
    click_on "New Magento"

    click_on "Create Magento"

    assert_text "Magento was successfully created"
    click_on "Back"
  end

  test "updating a Magento" do
    visit magentos_url
    click_on "Edit", match: :first

    click_on "Update Magento"

    assert_text "Magento was successfully updated"
    click_on "Back"
  end

  test "destroying a Magento" do
    visit magentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Magento was successfully destroyed"
  end
end
