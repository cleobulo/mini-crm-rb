require "application_system_test_case"

class InteractionsTest < ApplicationSystemTestCase
  setup do
    @interaction = interactions(:one)
  end

  test "visiting the index" do
    visit interactions_url
    assert_selector "h1", text: "Interactions"
  end

  test "should create interaction" do
    visit interactions_url
    click_on "New interaction"

    fill_in "Content", with: @interaction.content
    fill_in "Lead", with: @interaction.lead_id
    click_on "Create Interaction"

    assert_text "Interaction was successfully created"
    click_on "Back"
  end

  test "should update Interaction" do
    visit interaction_url(@interaction)
    click_on "Edit this interaction", match: :first

    fill_in "Content", with: @interaction.content
    fill_in "Lead", with: @interaction.lead_id
    click_on "Update Interaction"

    assert_text "Interaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Interaction" do
    visit interaction_url(@interaction)
    click_on "Destroy this interaction", match: :first

    assert_text "Interaction was successfully destroyed"
  end
end
