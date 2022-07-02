require "application_system_test_case"

class DeudaUsersTest < ApplicationSystemTestCase
  setup do
    @deuda_user = deuda_users(:one)
  end

  test "visiting the index" do
    visit deuda_users_url
    assert_selector "h1", text: "Deuda users"
  end

  test "should create deuda user" do
    visit deuda_users_url
    click_on "New deuda user"

    fill_in "Dv rut person", with: @deuda_user.dv_rut_person
    fill_in "Institucion 1", with: @deuda_user.institucion_1
    fill_in "Meses sin pago 1", with: @deuda_user.meses_sin_pago_1
    fill_in "Monto deuda 1", with: @deuda_user.monto_deuda_1
    fill_in "Monto deuda total", with: @deuda_user.monto_deuda_total
    fill_in "Pago mensual 1", with: @deuda_user.pago_mensual_1
    fill_in "Pago mensual total", with: @deuda_user.pago_mensual_total
    fill_in "Rut person", with: @deuda_user.rut_person
    fill_in "Tipo deuda 1", with: @deuda_user.tipo_deuda_1
    click_on "Create Deuda user"

    assert_text "Deuda user was successfully created"
    click_on "Back"
  end

  test "should update Deuda user" do
    visit deuda_user_url(@deuda_user)
    click_on "Edit this deuda user", match: :first

    fill_in "Dv rut person", with: @deuda_user.dv_rut_person
    fill_in "Institucion 1", with: @deuda_user.institucion_1
    fill_in "Meses sin pago 1", with: @deuda_user.meses_sin_pago_1
    fill_in "Monto deuda 1", with: @deuda_user.monto_deuda_1
    fill_in "Monto deuda total", with: @deuda_user.monto_deuda_total
    fill_in "Pago mensual 1", with: @deuda_user.pago_mensual_1
    fill_in "Pago mensual total", with: @deuda_user.pago_mensual_total
    fill_in "Rut person", with: @deuda_user.rut_person
    fill_in "Tipo deuda 1", with: @deuda_user.tipo_deuda_1
    click_on "Update Deuda user"

    assert_text "Deuda user was successfully updated"
    click_on "Back"
  end

  test "should destroy Deuda user" do
    visit deuda_user_url(@deuda_user)
    click_on "Destroy this deuda user", match: :first

    assert_text "Deuda user was successfully destroyed"
  end
end
