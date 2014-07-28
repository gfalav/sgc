require 'test_helper'

class ContratofactsControllerTest < ActionController::TestCase
  setup do
    @contratofact = contratofacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contratofacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contratofact" do
    assert_difference('Contratofact.count') do
      post :create, contratofact: { contrato_id: @contratofact.contrato_id, cuenta_id: @contratofact.cuenta_id, econtrato_id: @contratofact.econtrato_id, factura_id: @contratofact.factura_id, iibb: @contratofact.iibb, nombre: @contratofact.nombre, tcuit_id: @contratofact.tcuit_id, tiibb_id: @contratofact.tiibb_id, tperfact_id: @contratofact.tperfact_id }
    end

    assert_redirected_to contratofact_path(assigns(:contratofact))
  end

  test "should show contratofact" do
    get :show, id: @contratofact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contratofact
    assert_response :success
  end

  test "should update contratofact" do
    patch :update, id: @contratofact, contratofact: { contrato_id: @contratofact.contrato_id, cuenta_id: @contratofact.cuenta_id, econtrato_id: @contratofact.econtrato_id, factura_id: @contratofact.factura_id, iibb: @contratofact.iibb, nombre: @contratofact.nombre, tcuit_id: @contratofact.tcuit_id, tiibb_id: @contratofact.tiibb_id, tperfact_id: @contratofact.tperfact_id }
    assert_redirected_to contratofact_path(assigns(:contratofact))
  end

  test "should destroy contratofact" do
    assert_difference('Contratofact.count', -1) do
      delete :destroy, id: @contratofact
    end

    assert_redirected_to contratofacts_path
  end
end
