require "test_helper"

class LearnerControllerTest < ActionDispatch::IntegrationTest
  test "should get new_learner" do
    get learner_new_learner_url
    assert_response :success
  end

  test "should get show_learner" do
    get learner_show_learner_url
    assert_response :success
  end
end
