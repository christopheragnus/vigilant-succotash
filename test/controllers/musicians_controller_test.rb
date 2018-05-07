require 'test_helper'

class MusiciansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musician = musicians(:one)
  end

  test "should get index" do
    get musicians_url
    assert_response :success
  end

  test "should get new" do
    get new_musician_url
    assert_response :success
  end

  test "should create musician" do
    assert_difference('Musician.count') do
      post musicians_url, params: { musician: { address: @musician.address, email: @musician.email, name: @musician.name, password: 'secret', password_confirmation: 'secret', phone: @musician.phone } }
    end

    assert_redirected_to musician_url(Musician.last)
  end

  test "should show musician" do
    get musician_url(@musician)
    assert_response :success
  end

  test "should get edit" do
    get edit_musician_url(@musician)
    assert_response :success
  end

  test "should update musician" do
    patch musician_url(@musician), params: { musician: { address: @musician.address, email: @musician.email, name: @musician.name, password: 'secret', password_confirmation: 'secret', phone: @musician.phone } }
    assert_redirected_to musician_url(@musician)
  end

  test "should destroy musician" do
    assert_difference('Musician.count', -1) do
      delete musician_url(@musician)
    end

    assert_redirected_to musicians_url
  end
end
