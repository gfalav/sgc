require 'test_helper'

class BonificacionsControllerTest < ActionController::TestCase
  setup do
    @bonificacion = bonificacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bonificacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bonificacion" do
    assert_difference('Bonificacion.count') do
      post :create, bonificacion: { edesal_id: @bonificacion.edesal_id, fdesde: @bonificacion.fdesde, fhasta: @bonificacion.fhasta, linea: @bonificacion.linea, porcentaje: @bonificacion.porcentaje }
    end

    assert_redirected_to bonificacion_path(assigns(:bonificacion))
  end

  test "should show bonificacion" do
    get :show, id: @bonificacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bonificacion
    assert_response :success
  end

  test "should update bonificacion" do
    patch :update, id: @bonificacion, bonificacion: { edesal_id: @bonificacion.edesal_id, fdesde: @bonificacion.fdesde, fhasta: @bonificacion.fhasta, linea: @bonificacion.linea, porcentaje: @bonificacion.porcentaje }
    assert_redirected_to bonificacion_path(assigns(:bonificacion))
  end

  test "should destroy bonificacion" do
    assert_difference('Bonificacion.count', -1) do
      delete :destroy, id: @bonificacion
    end

    assert_redirected_to bonificacions_path
  end
end
