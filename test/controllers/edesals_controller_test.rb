require 'test_helper'

class EdesalsControllerTest < ActionController::TestCase
  setup do
    @edesal = edesals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:edesals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create edesal" do
    assert_difference('Edesal.count') do
      post :create, edesal: { contrato_id: @edesal.contrato_id, csmofijo: @edesal.csmofijo, eservicio: @edesal.eservicio, fdetectbadcosfi: @edesal.fdetectbadcosfi, fpotoriginal: @edesal.fpotoriginal, fpotvigente: @edesal.fpotvigente, potoriginal: @edesal.potoriginal, potvigente: @edesal.potvigente, tarifa_id: @edesal.tarifa_id }
    end

    assert_redirected_to edesal_path(assigns(:edesal))
  end

  test "should show edesal" do
    get :show, id: @edesal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @edesal
    assert_response :success
  end

  test "should update edesal" do
    patch :update, id: @edesal, edesal: { contrato_id: @edesal.contrato_id, csmofijo: @edesal.csmofijo, eservicio: @edesal.eservicio, fdetectbadcosfi: @edesal.fdetectbadcosfi, fpotoriginal: @edesal.fpotoriginal, fpotvigente: @edesal.fpotvigente, potoriginal: @edesal.potoriginal, potvigente: @edesal.potvigente, tarifa_id: @edesal.tarifa_id }
    assert_redirected_to edesal_path(assigns(:edesal))
  end

  test "should destroy edesal" do
    assert_difference('Edesal.count', -1) do
      delete :destroy, id: @edesal
    end

    assert_redirected_to edesals_path
  end
end
