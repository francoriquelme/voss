require "application_system_test_case"

class SocialCausesTest < ApplicationSystemTestCase
  setup do
    @social_cause = social_causes(:one)
  end

  test "visiting the index" do
    visit social_causes_url
    assert_selector "h1", text: "Social causes"
  end

  test "should create social cause" do
    visit social_causes_url
    click_on "New social cause"

    fill_in "Asesor asignado", with: @social_cause.asesor_asignado
    fill_in "Descripcion", with: @social_cause.descripcion
    fill_in "Dv rut benef", with: @social_cause.dv_rut_benef
    fill_in "Dv rut person", with: @social_cause.dv_rut_person
    fill_in "Fecha ingreso causa", with: @social_cause.fecha_ingreso_causa
    fill_in "Fundacion u ong relacionada", with: @social_cause.fundacion_u_ong_relacionada
    fill_in "Id causa", with: @social_cause.id_causa
    fill_in "Nombre causa", with: @social_cause.nombre_causa
    fill_in "Puntaje causa", with: @social_cause.puntaje_causa
    fill_in "Rut beneficiario", with: @social_cause.rut_beneficiario
    fill_in "Rut beneficiario causa", with: @social_cause.rut_beneficiario_causa
    fill_in "Tamano causa", with: @social_cause.tamano_causa
    fill_in "Tipo causa", with: @social_cause.tipo_causa
    click_on "Create Social cause"

    assert_text "Social cause was successfully created"
    click_on "Back"
  end

  test "should update Social cause" do
    visit social_cause_url(@social_cause)
    click_on "Edit this social cause", match: :first

    fill_in "Asesor asignado", with: @social_cause.asesor_asignado
    fill_in "Descripcion", with: @social_cause.descripcion
    fill_in "Dv rut benef", with: @social_cause.dv_rut_benef
    fill_in "Dv rut person", with: @social_cause.dv_rut_person
    fill_in "Fecha ingreso causa", with: @social_cause.fecha_ingreso_causa
    fill_in "Fundacion u ong relacionada", with: @social_cause.fundacion_u_ong_relacionada
    fill_in "Id causa", with: @social_cause.id_causa
    fill_in "Nombre causa", with: @social_cause.nombre_causa
    fill_in "Puntaje causa", with: @social_cause.puntaje_causa
    fill_in "Rut beneficiario", with: @social_cause.rut_beneficiario
    fill_in "Rut beneficiario causa", with: @social_cause.rut_beneficiario_causa
    fill_in "Tamano causa", with: @social_cause.tamano_causa
    fill_in "Tipo causa", with: @social_cause.tipo_causa
    click_on "Update Social cause"

    assert_text "Social cause was successfully updated"
    click_on "Back"
  end

  test "should destroy Social cause" do
    visit social_cause_url(@social_cause)
    click_on "Destroy this social cause", match: :first

    assert_text "Social cause was successfully destroyed"
  end
end
