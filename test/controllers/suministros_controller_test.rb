require 'test_helper'

class SuministrosControllerTest < ActionController::TestCase
  setup do
    @suministro = suministros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suministros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suministro" do
    assert_difference('Suministro.count') do
      post :create, suministro: { direccion_id: @suministro.direccion_id, edesal_id: @suministro.edesal_id, nombre: @suministro.nombre, tconexion_id: @suministro.tconexion_id, tfase_id: @suministro.tfase_id, tmedicion_id: @suministro.tmedicion_id, ttension_id: @suministro.ttension_id }
    end

    assert_redirected_to suministro_path(assigns(:suministro))
  end

  test "should show suministro" do
    get :show, id: @suministro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suministro
    assert_response :success
  end

  test "should update suministro" do
    patch :update, id: @suministro, suministro: { direccion_id: @suministro.direccion_id, edesal_id: @suministro.edesal_id, nombre: @suministro.nombre, tconexion_id: @suministro.tconexion_id, tfase_id: @suministro.tfase_id, tmedicion_id: @suministro.tmedicion_id, ttension_id: @suministro.ttension_id }
    assert_redirected_to suministro_path(assigns(:suministro))
  end

  test "should destroy suministro" do
    assert_difference('Suministro.count', -1) do
      delete :destroy, id: @suministro
    end

    assert_redirected_to suministros_path
  end
end
