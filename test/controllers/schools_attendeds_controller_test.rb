require 'test_helper'

class SchoolsAttendedsControllerTest < ActionController::TestCase
  setup do
    @schools_attended = schools_attendeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schools_attendeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schools_attended" do
    assert_difference('SchoolsAttended.count') do
      post :create, schools_attended: { beginning_year: @schools_attended.beginning_year, ending_year: @schools_attended.ending_year, school: @schools_attended.school }
    end

    assert_redirected_to schools_attended_path(assigns(:schools_attended))
  end

  test "should show schools_attended" do
    get :show, id: @schools_attended
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schools_attended
    assert_response :success
  end

  test "should update schools_attended" do
    patch :update, id: @schools_attended, schools_attended: { beginning_year: @schools_attended.beginning_year, ending_year: @schools_attended.ending_year, school: @schools_attended.school }
    assert_redirected_to schools_attended_path(assigns(:schools_attended))
  end

  test "should destroy schools_attended" do
    assert_difference('SchoolsAttended.count', -1) do
      delete :destroy, id: @schools_attended
    end

    assert_redirected_to schools_attendeds_path
  end
end
