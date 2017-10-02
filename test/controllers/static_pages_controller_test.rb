require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Pairs!"
  end

  test "should get home page on root" do
    get root_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get stats" do
    get static_pages_stats_url
    assert_response :success
    assert_select "title", "User Stats | #{@base_title}"
  end

end
