require 'test_helper'

class BinariansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @binarian = binarians(:one)
  end

  test "should get index" do
    get binarians_url
    assert_response :success
  end

  test "should get new" do
    get new_binarian_url
    assert_response :success
  end

  test "should create binarian" do
    assert_difference('Binarian.count') do
      post binarians_url, params: { binarian: { alamat: @binarian.alamat, nama: @binarian.nama, umur: @binarian.umur } }
    end

    assert_redirected_to binarian_url(Binarian.last)
  end

  test "should show binarian" do
    get binarian_url(@binarian)
    assert_response :success
  end

  test "should get edit" do
    get edit_binarian_url(@binarian)
    assert_response :success
  end

  test "should update binarian" do
    patch binarian_url(@binarian), params: { binarian: { alamat: @binarian.alamat, nama: @binarian.nama, umur: @binarian.umur } }
    assert_redirected_to binarian_url(@binarian)
  end

  test "should destroy binarian" do
    assert_difference('Binarian.count', -1) do
      delete binarian_url(@binarian)
    end

    assert_redirected_to binarians_url
  end
end
