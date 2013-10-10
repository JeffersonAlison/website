require 'test_helper'

class PostnoticesControllerTest < ActionController::TestCase
  setup do
    @postnotice = postnotices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postnotices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postnotice" do
    assert_difference('Postnotice.count') do
      post :create, postnotice: { author: @postnotice.author, content: @postnotice.content, title: @postnotice.title }
    end

    assert_redirected_to postnotice_path(assigns(:postnotice))
  end

  test "should show postnotice" do
    get :show, id: @postnotice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postnotice
    assert_response :success
  end

  test "should update postnotice" do
    put :update, id: @postnotice, postnotice: { author: @postnotice.author, content: @postnotice.content, title: @postnotice.title }
    assert_redirected_to postnotice_path(assigns(:postnotice))
  end

  test "should destroy postnotice" do
    assert_difference('Postnotice.count', -1) do
      delete :destroy, id: @postnotice
    end

    assert_redirected_to postnotices_path
  end
end
