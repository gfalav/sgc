require 'test_helper'

class EdesalfactsControllerTest < ActionController::TestCase
  setup do
    @edesalfact = edesalfacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:edesalfacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create edesalfact" do
    assert_difference('Edesalfact.count') do
      post :create, edesalfact: { contratofact_id: @edesalfact.contratofact_id, csmofijo: @edesalfact.csmofijo, edesal_id: @edesalfact.edesal_id, eservicio: @edesalfact.eservicio, factura_id: @edesalfact.factura_id, fdetectbadcosfi: @edesalfact.fdetectbadcosfi, fpotoriginal: @edesalfact.fpotoriginal, fpotvigente: @edesalfact.fpotvigente, potoriginal: @edesalfact.potoriginal, potvigente: @edesalfact.potvigente, tarifa_id: @edesalfact.tarifa_id }
    end

    assert_redirected_to edesalfact_path(assigns(:edesalfact))
  end

  test "should show edesalfact" do
    get :show, id: @edesalfact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @edesalfact
    assert_response :success
  end

  test "should update edesalfact" do
    patch :update, id: @edesalfact, edesalfact: { contratofact_id: @edesalfact.contratofact_id, csmofijo: @edesalfact.csmofijo, edesal_id: @edesalfact.edesal_id, eservicio: @edesalfact.eservicio, factura_id: @edesalfact.factura_id, fdetectbadcosfi: @edesalfact.fdetectbadcosfi, fpotoriginal: @edesalfact.fpotoriginal, fpotvigente: @edesalfact.fpotvigente, potoriginal: @edesalfact.potoriginal, potvigente: @edesalfact.potvigente, tarifa_id: @edesalfact.tarifa_id }
    assert_redirected_to edesalfact_path(assigns(:edesalfact))
  end

  test "should destroy edesalfact" do
    assert_difference('Edesalfact.count', -1) do
      delete :destroy, id: @edesalfact
    end

    assert_redirected_to edesalfacts_path
  end
end
