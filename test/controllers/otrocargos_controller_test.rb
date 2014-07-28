require 'test_helper'

class OtrocargosControllerTest < ActionController::TestCase
  setup do
    @otrocargo = otrocargos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:otrocargos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create otrocargo" do
    assert_difference('Otrocargo.count') do
      post :create, otrocargo: { concepto_id: @otrocargo.concepto_id, ecargo_id: @otrocargo.ecargo_id, edesal_id: @otrocargo.edesal_id, ffactura: @otrocargo.ffactura, importe: @otrocargo.importe }
    end

    assert_redirected_to otrocargo_path(assigns(:otrocargo))
  end

  test "should show otrocargo" do
    get :show, id: @otrocargo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @otrocargo
    assert_response :success
  end

  test "should update otrocargo" do
    patch :update, id: @otrocargo, otrocargo: { concepto_id: @otrocargo.concepto_id, ecargo_id: @otrocargo.ecargo_id, edesal_id: @otrocargo.edesal_id, ffactura: @otrocargo.ffactura, importe: @otrocargo.importe }
    assert_redirected_to otrocargo_path(assigns(:otrocargo))
  end

  test "should destroy otrocargo" do
    assert_difference('Otrocargo.count', -1) do
      delete :destroy, id: @otrocargo
    end

    assert_redirected_to otrocargos_path
  end
end
