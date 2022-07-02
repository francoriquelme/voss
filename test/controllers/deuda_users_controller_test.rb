require "test_helper"

class DeudaUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deuda_user = deuda_users(:one)
  end

  test "should get index" do
    get deuda_users_url
    assert_response :success
  end

  test "should get new" do
    get new_deuda_user_url
    assert_response :success
  end

  test "should create deuda_user" do
    assert_difference("DeudaUser.count") do
      post deuda_users_url, params: { deuda_user: { dv_rut_person: @deuda_user.dv_rut_person, institucion_1: @deuda_user.institucion_1, meses_sin_pago_1: @deuda_user.meses_sin_pago_1, monto_deuda_1: @deuda_user.monto_deuda_1, monto_deuda_total: @deuda_user.monto_deuda_total, pago_mensual_1: @deuda_user.pago_mensual_1, pago_mensual_total: @deuda_user.pago_mensual_total, rut_person: @deuda_user.rut_person, tipo_deuda_1: @deuda_user.tipo_deuda_1 } }
    end

    assert_redirected_to deuda_user_url(DeudaUser.last)
  end

  test "should show deuda_user" do
    get deuda_user_url(@deuda_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_deuda_user_url(@deuda_user)
    assert_response :success
  end

  test "should update deuda_user" do
    patch deuda_user_url(@deuda_user), params: { deuda_user: { dv_rut_person: @deuda_user.dv_rut_person, institucion_1: @deuda_user.institucion_1, meses_sin_pago_1: @deuda_user.meses_sin_pago_1, monto_deuda_1: @deuda_user.monto_deuda_1, monto_deuda_total: @deuda_user.monto_deuda_total, pago_mensual_1: @deuda_user.pago_mensual_1, pago_mensual_total: @deuda_user.pago_mensual_total, rut_person: @deuda_user.rut_person, tipo_deuda_1: @deuda_user.tipo_deuda_1 } }
    assert_redirected_to deuda_user_url(@deuda_user)
  end

  test "should destroy deuda_user" do
    assert_difference("DeudaUser.count", -1) do
      delete deuda_user_url(@deuda_user)
    end

    assert_redirected_to deuda_users_url
  end
end
