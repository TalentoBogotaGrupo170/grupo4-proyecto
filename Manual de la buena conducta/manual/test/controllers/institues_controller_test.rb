require 'test_helper'

class InstituesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @institue = institues(:one)
  end

  test "should get index" do
    get institues_url
    assert_response :success
  end

  test "should get new" do
    get new_institue_url
    assert_response :success
  end

  test "should create institue" do
    assert_difference('Institue.count') do
      post institues_url, params: { institue: { contact: @institue.contact, direction: @institue.direction, district: @institue.district, email: @institue.email, name: @institue.name, phone: @institue.phone } }
    end

    assert_redirected_to institue_url(Institue.last)
  end

  test "should show institue" do
    get institue_url(@institue)
    assert_response :success
  end

  test "should get edit" do
    get edit_institue_url(@institue)
    assert_response :success
  end

  test "should update institue" do
    patch institue_url(@institue), params: { institue: { contact: @institue.contact, direction: @institue.direction, district: @institue.district, email: @institue.email, name: @institue.name, phone: @institue.phone } }
    assert_redirected_to institue_url(@institue)
  end

  test "should destroy institue" do
    assert_difference('Institue.count', -1) do
      delete institue_url(@institue)
    end

    assert_redirected_to institues_url
  end
end
