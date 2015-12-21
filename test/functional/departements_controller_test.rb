require 'test_helper'

class DepartementsControllerTest < ActionController::TestCase
  setup do
    @departement = departements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:departements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create departement" do
    assert_difference('Departement.count') do
      post :create, departement: { email: @departement.email, name: @departement.name, phone: @departement.phone }
    end

    assert_redirected_to departement_path(assigns(:departement))
  end

  test "should show departement" do
    get :show, id: @departement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @departement
    assert_response :success
  end

  test "should update departement" do
    put :update, id: @departement, departement: { email: @departement.email, name: @departement.name, phone: @departement.phone }
    assert_redirected_to departement_path(assigns(:departement))
  end

  test "should destroy departement" do
    assert_difference('Departement.count', -1) do
      delete :destroy, id: @departement
    end

    assert_redirected_to departements_path
  end
end
