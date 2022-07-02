require "application_system_test_case"

class FinancialStatesTest < ApplicationSystemTestCase
  setup do
    @financial_state = financial_states(:one)
  end

  test "visiting the index" do
    visit financial_states_url
    assert_selector "h1", text: "Financial states"
  end

  test "should create financial state" do
    visit financial_states_url
    click_on "New financial state"

    fill_in "Dv rut person", with: @financial_state.dv_rut_person
    fill_in "Estado financiero", with: @financial_state.estado_financiero
    fill_in "Fecha actualizacion", with: @financial_state.fecha_actualizacion
    fill_in "Monto deuda total", with: @financial_state.monto_deuda_total
    fill_in "Pago mensual total", with: @financial_state.pago_mensual_total
    fill_in "Renta mensual", with: @financial_state.renta_mensual
    fill_in "Rut person", with: @financial_state.rut_person
    click_on "Create Financial state"

    assert_text "Financial state was successfully created"
    click_on "Back"
  end

  test "should update Financial state" do
    visit financial_state_url(@financial_state)
    click_on "Edit this financial state", match: :first

    fill_in "Dv rut person", with: @financial_state.dv_rut_person
    fill_in "Estado financiero", with: @financial_state.estado_financiero
    fill_in "Fecha actualizacion", with: @financial_state.fecha_actualizacion
    fill_in "Monto deuda total", with: @financial_state.monto_deuda_total
    fill_in "Pago mensual total", with: @financial_state.pago_mensual_total
    fill_in "Renta mensual", with: @financial_state.renta_mensual
    fill_in "Rut person", with: @financial_state.rut_person
    click_on "Update Financial state"

    assert_text "Financial state was successfully updated"
    click_on "Back"
  end

  test "should destroy Financial state" do
    visit financial_state_url(@financial_state)
    click_on "Destroy this financial state", match: :first

    assert_text "Financial state was successfully destroyed"
  end
end
