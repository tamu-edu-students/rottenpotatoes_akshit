require "application_system_test_case"

class MoviePa2sTest < ApplicationSystemTestCase
  setup do
    @movie_pa2 = movie_pa2s(:one)
  end

  test "visiting the index" do
    visit movie_pa2s_url
    assert_selector "h1", text: "Movie pa2s"
  end

  test "should create movie pa2" do
    visit movie_pa2s_url
    click_on "New movie pa2"

    fill_in "Description", with: @movie_pa2.description
    fill_in "Rating", with: @movie_pa2.rating
    fill_in "Release date", with: @movie_pa2.release_date
    fill_in "Title", with: @movie_pa2.title
    click_on "Create Movie pa2"

    assert_text "Movie pa2 was successfully created"
    click_on "Back"
  end

  test "should update Movie pa2" do
    visit movie_pa2_url(@movie_pa2)
    click_on "Edit this movie pa2", match: :first

    fill_in "Description", with: @movie_pa2.description
    fill_in "Rating", with: @movie_pa2.rating
    fill_in "Release date", with: @movie_pa2.release_date
    fill_in "Title", with: @movie_pa2.title
    click_on "Update Movie pa2"

    assert_text "Movie pa2 was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie pa2" do
    visit movie_pa2_url(@movie_pa2)
    click_on "Destroy this movie pa2", match: :first

    assert_text "Movie pa2 was successfully destroyed"
  end
end
