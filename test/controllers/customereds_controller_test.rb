require "test_helper"

class CustomeredsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customered = customereds(:one)
  end

  test "should get index" do
    get customereds_url
    assert_response :success
  end

  test "should get new" do
    get new_customered_url
    assert_response :success
  end

  test "should create customered" do
    assert_difference('Customered.count') do
      post customereds_url, params: { customered: { first_name: @customered.first_name, id_card: @customered.id_card, last_name: @customered.last_name, parent_id: @customered.parent_id } }
    end

    assert_redirected_to customered_url(Customered.last)
  end

  test "should show customered" do
    get customered_url(@customered)
    assert_response :success
  end

  test "should get edit" do
    get edit_customered_url(@customered)
    assert_response :success
  end

  test "should update customered" do
    patch customered_url(@customered), params: { customered: { first_name: @customered.first_name, id_card: @customered.id_card, last_name: @customered.last_name, parent_id: @customered.parent_id } }
    assert_redirected_to customered_url(@customered)
  end

  test "should destroy customered" do
    assert_difference('Customered.count', -1) do
      delete customered_url(@customered)
    end

    assert_redirected_to customereds_url
  end
end
