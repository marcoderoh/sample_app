require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  test "should get ome" do
    get root_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end
  test "should get about" do
  	 get about_url
  	assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
  test "should get contact" do 
    get contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
    assert_select "h1", "Contact Me"
  end
  test "should get cv" do 
    get cv_url
    assert_response :success
    assert_select "title", "CV HOME | #{@base_title}"
    assert_select "h2", "MY CURRICULUM VITAE"
    assert_select "h3", "Academic Background"
    assert_select "h3", "SKILLS AND INTEREST DEVELOPED"
    assert_select "h3", "HOBBIES"
    assert_select "h3", "REFEREES"
    assert_select "h4", "CLUBS AND SOCIETIES ATTENDED"

end


end
