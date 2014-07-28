require 'test_helper'

class LecturafactsControllerTest < ActionController::TestCase
  setup do
    @lecturafact = lecturafacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lecturafacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lecturafact" do
    assert_difference('Lecturafact.count') do
      post :create, lecturafact: { consumo: @lecturafact.consumo, ctelect: @lecturafact.ctelect, factura_id: @lecturafact.factura_id, flectura: @lecturafact.flectura, lectura: @lecturafact.lectura, lectura_id: @lecturafact.lectura_id, medidor_id: @lecturafact.medidor_id, tconsumo_id: @lecturafact.tconsumo_id, tlectura_id: @lecturafact.tlectura_id }
    end

    assert_redirected_to lecturafact_path(assigns(:lecturafact))
  end

  test "should show lecturafact" do
    get :show, id: @lecturafact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lecturafact
    assert_response :success
  end

  test "should update lecturafact" do
    patch :update, id: @lecturafact, lecturafact: { consumo: @lecturafact.consumo, ctelect: @lecturafact.ctelect, factura_id: @lecturafact.factura_id, flectura: @lecturafact.flectura, lectura: @lecturafact.lectura, lectura_id: @lecturafact.lectura_id, medidor_id: @lecturafact.medidor_id, tconsumo_id: @lecturafact.tconsumo_id, tlectura_id: @lecturafact.tlectura_id }
    assert_redirected_to lecturafact_path(assigns(:lecturafact))
  end

  test "should destroy lecturafact" do
    assert_difference('Lecturafact.count', -1) do
      delete :destroy, id: @lecturafact
    end

    assert_redirected_to lecturafacts_path
  end
end
