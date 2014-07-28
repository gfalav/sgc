require 'test_helper'

class OtrocargofactsControllerTest < ActionController::TestCase
  setup do
    @otrocargofact = otrocargofacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:otrocargofacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create otrocargofact" do
    assert_difference('Otrocargofact.count') do
      post :create, otrocargofact: { concepto_id: @otrocargofact.concepto_id, ecargo_id: @otrocargofact.ecargo_id, edesal_id: @otrocargofact.edesal_id, factura_id: @otrocargofact.factura_id, ffactura: @otrocargofact.ffactura, importe: @otrocargofact.importe, otrocargo_id: @otrocargofact.otrocargo_id }
    end

    assert_redirected_to otrocargofact_path(assigns(:otrocargofact))
  end

  test "should show otrocargofact" do
    get :show, id: @otrocargofact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @otrocargofact
    assert_response :success
  end

  test "should update otrocargofact" do
    patch :update, id: @otrocargofact, otrocargofact: { concepto_id: @otrocargofact.concepto_id, ecargo_id: @otrocargofact.ecargo_id, edesal_id: @otrocargofact.edesal_id, factura_id: @otrocargofact.factura_id, ffactura: @otrocargofact.ffactura, importe: @otrocargofact.importe, otrocargo_id: @otrocargofact.otrocargo_id }
    assert_redirected_to otrocargofact_path(assigns(:otrocargofact))
  end

  test "should destroy otrocargofact" do
    assert_difference('Otrocargofact.count', -1) do
      delete :destroy, id: @otrocargofact
    end

    assert_redirected_to otrocargofacts_path
  end
end
