require "test_helper"

class FinancialStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financial_state = financial_states(:one)
  end

  test "should get index" do
    get financial_states_url
    assert_response :success
  end

  test "should get new" do
    get new_financial_state_url
    assert_response :success
  end

  test "should create financial_state" do
    assert_difference("FinancialState.count") do
      post financial_states_url, params: { financial_state: { dv_rut_person: @financial_state.dv_rut_person, estado_financiero: @financial_state.estado_financiero, fecha_actualizacion: @financial_state.fecha_actualizacion, monto_deuda_total: @financial_state.monto_deuda_total, pago_mensual_total: @financial_state.pago_mensual_total, renta_mensual: @financial_state.renta_mensual, rut_person: @financial_state.rut_person } }
    end

    assert_redirected_to financial_state_url(FinancialState.last)
  end

  test "should show financial_state" do
    get financial_state_url(@financial_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_financial_state_url(@financial_state)
    assert_response :success
  end

  test "should update financial_state" do
    patch financial_state_url(@financial_state), params: { financial_state: { dv_rut_person: @financial_state.dv_rut_person, estado_financiero: @financial_state.estado_financiero, fecha_actualizacion: @financial_state.fecha_actualizacion, monto_deuda_total: @financial_state.monto_deuda_total, pago_mensual_total: @financial_state.pago_mensual_total, renta_mensual: @financial_state.renta_mensual, rut_person: @financial_state.rut_person } }
    assert_redirected_to financial_state_url(@financial_state)
  end

  test "should destroy financial_state" do
    assert_difference("FinancialState.count", -1) do
      delete financial_state_url(@financial_state)
    end

    assert_redirected_to financial_states_url
  end
end
