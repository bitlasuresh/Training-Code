require 'test_helper'

class LibraryStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @library_store = library_stores(:one)
  end

  test "should get index" do
    get library_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_library_store_url
    assert_response :success
  end

  test "should create library_store" do
    assert_difference('LibraryStore.count') do
      post library_stores_url, params: { library_store: { author: @library_store.author, name: @library_store.name } }
    end

    assert_redirected_to library_store_url(LibraryStore.last)
  end

  test "should show library_store" do
    get library_store_url(@library_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_library_store_url(@library_store)
    assert_response :success
  end

  test "should update library_store" do
    patch library_store_url(@library_store), params: { library_store: { author: @library_store.author, name: @library_store.name } }
    assert_redirected_to library_store_url(@library_store)
  end

  test "should destroy library_store" do
    assert_difference('LibraryStore.count', -1) do
      delete library_store_url(@library_store)
    end

    assert_redirected_to library_stores_url
  end
end
