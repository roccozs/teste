require 'test_helper'

class AnimaisControllerTest < ActionController::TestCase
  setup do
    @animai = animais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:animais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create animai" do
    assert_difference('Animai.count') do
      post :create, animai: { especie: @animai.especie, nome: @animai.nome }
    end

    assert_redirected_to animai_path(assigns(:animai))
  end

  test "should show animai" do
    get :show, id: @animai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @animai
    assert_response :success
  end

  test "should update animai" do
    patch :update, id: @animai, animai: { especie: @animai.especie, nome: @animai.nome }
    assert_redirected_to animai_path(assigns(:animai))
  end

  test "should destroy animai" do
    assert_difference('Animai.count', -1) do
      delete :destroy, id: @animai
    end

    assert_redirected_to animais_path
  end
end
