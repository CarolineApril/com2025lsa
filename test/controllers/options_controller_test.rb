require 'test_helper'

class OptionsControllerTest < ActionController::TestCase
  setup do
    @option = options(:one)
  end

  test "should get index" do #testing the index method for options
    get :index
    assert_response :success
    assert_not_nil assigns(:options)
  end

  test "should get new" do #testing new method for options
    get :new
    assert_response :success
  end

  test "should create option" do #testing create method - all variables included
    assert_difference('Option.count') do
      post :create, option: { content: @option.content, professor: @option.professor, title: @option.title, credits: @option.credits }
    end

    assert_redirected_to option_path(assigns(:option)) #redirected to options
  end

  test "should show option" do #testing show option
    get :show, id: @option
    assert_response :success
  end

  test "should get edit" do #testing edit in options
    get :edit, id: @option
    assert_response :success
  end

  test "should update option" do #testing update in options - all variables
    patch :update, id: @option, option: { content: @option.content, professor: @option.professor, title: @option.title, credits: @option.credits }
    assert_redirected_to option_path(assigns(:option)) #redirected to options
  end

  test "should destroy option" do #test destroy method in options
    assert_difference('Option.count', -1) do
      delete :destroy, id: @option
    end

    assert_redirected_to options_path #redirected to options
  end
end
