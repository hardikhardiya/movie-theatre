require 'test_helper'

class MovieListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_list = movie_lists(:one)
  end

  test "should get index" do
    get movie_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_list_url
    assert_response :success
  end

  test "should create movie_list" do
    assert_difference('MovieList.count') do
      post movie_lists_url, params: { movie_list: { name: @movie_list.name, price: @movie_list.price } }
    end

    assert_redirected_to movie_list_url(MovieList.last)
  end

  test "should show movie_list" do
    get movie_list_url(@movie_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_list_url(@movie_list)
    assert_response :success
  end

  test "should update movie_list" do
    patch movie_list_url(@movie_list), params: { movie_list: { name: @movie_list.name, price: @movie_list.price } }
    assert_redirected_to movie_list_url(@movie_list)
  end

  test "should destroy movie_list" do
    assert_difference('MovieList.count', -1) do
      delete movie_list_url(@movie_list)
    end

    assert_redirected_to movie_lists_url
  end
end
