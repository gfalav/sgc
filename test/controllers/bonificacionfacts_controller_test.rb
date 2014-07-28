require 'test_helper'

class BonificacionfactsControllerTest < ActionController::TestCase
  setup do
    @bonificacionfact = bonificacionfacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bonificacionfacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bonificacionfact" do
    assert_difference('Bonificacionfact.count') do
      post :create, bonificacionfact: { bonificacion_id: @bonificacionfact.bonificacion_id, edesal_id: @bonificacionfact.edesal_id, factura_id: @bonificacionfact.factura_id, fdesde: @bonificacionfact.fdesde, fhasta: @bonificacionfact.fhasta, linea: @bonificacionfact.linea, porcentaje: @bonificacionfact.porcentaje }
    end

    assert_redirected_to bonificacionfact_path(assigns(:bonificacionfact))
  end

  test "should show bonificacionfact" do
    get :show, id: @bonificacionfact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bonificacionfact
    assert_response :success
  end

  test "should update bonificacionfact" do
    patch :update, id: @bonificacionfact, bonificacionfact: { bonificacion_id: @bonificacionfact.bonificacion_id, edesal_id: @bonificacionfact.edesal_id, factura_id: @bonificacionfact.factura_id, fdesde: @bonificacionfact.fdesde, fhasta: @bonificacionfact.fhasta, linea: @bonificacionfact.linea, porcentaje: @bonificacionfact.porcentaje }
    assert_redirected_to bonificacionfact_path(assigns(:bonificacionfact))
  end

  test "should destroy bonificacionfact" do
    assert_difference('Bonificacionfact.count', -1) do
      delete :destroy, id: @bonificacionfact
    end

    assert_redirected_to bonificacionfacts_path
  end
end
