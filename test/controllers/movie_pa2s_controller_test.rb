require "test_helper"

class MoviePa2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_pa2 = movie_pa2s(:one)
  end

  test "should get index" do
    get movie_pa2s_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_pa2_url
    assert_response :success
  end

  test "should create movie_pa2" do
    assert_difference("MoviePa2.count") do
      post movie_pa2s_url, params: { movie_pa2: { description: @movie_pa2.description, rating: @movie_pa2.rating, release_date: @movie_pa2.release_date, title: @movie_pa2.title } }
    end

    assert_redirected_to movie_pa2_url(MoviePa2.last)
  end

  test "should show movie_pa2" do
    get movie_pa2_url(@movie_pa2)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_pa2_url(@movie_pa2)
    assert_response :success
  end

  test "should update movie_pa2" do
    patch movie_pa2_url(@movie_pa2), params: { movie_pa2: { description: @movie_pa2.description, rating: @movie_pa2.rating, release_date: @movie_pa2.release_date, title: @movie_pa2.title } }
    assert_redirected_to movie_pa2_url(@movie_pa2)
  end

  test "should destroy movie_pa2" do
    assert_difference("MoviePa2.count", -1) do
      delete movie_pa2_url(@movie_pa2)
    end

    assert_redirected_to movie_pa2s_url
  end
end
