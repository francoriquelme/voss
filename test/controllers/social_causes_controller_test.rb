require "test_helper"

class SocialCausesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_cause = social_causes(:one)
  end

  test "should get index" do
    get social_causes_url
    assert_response :success
  end

  test "should get new" do
    get new_social_cause_url
    assert_response :success
  end

  test "should create social_cause" do
    assert_difference("SocialCause.count") do
      post social_causes_url, params: { social_cause: { asesor_asignado: @social_cause.asesor_asignado, descripcion: @social_cause.descripcion, dv_rut_benef: @social_cause.dv_rut_benef, dv_rut_person: @social_cause.dv_rut_person, fecha_ingreso_causa: @social_cause.fecha_ingreso_causa, fundacion_u_ong_relacionada: @social_cause.fundacion_u_ong_relacionada, id_causa: @social_cause.id_causa, nombre_causa: @social_cause.nombre_causa, puntaje_causa: @social_cause.puntaje_causa, rut_beneficiario: @social_cause.rut_beneficiario, rut_beneficiario_causa: @social_cause.rut_beneficiario_causa, tamano_causa: @social_cause.tamano_causa, tipo_causa: @social_cause.tipo_causa } }
    end

    assert_redirected_to social_cause_url(SocialCause.last)
  end

  test "should show social_cause" do
    get social_cause_url(@social_cause)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_cause_url(@social_cause)
    assert_response :success
  end

  test "should update social_cause" do
    patch social_cause_url(@social_cause), params: { social_cause: { asesor_asignado: @social_cause.asesor_asignado, descripcion: @social_cause.descripcion, dv_rut_benef: @social_cause.dv_rut_benef, dv_rut_person: @social_cause.dv_rut_person, fecha_ingreso_causa: @social_cause.fecha_ingreso_causa, fundacion_u_ong_relacionada: @social_cause.fundacion_u_ong_relacionada, id_causa: @social_cause.id_causa, nombre_causa: @social_cause.nombre_causa, puntaje_causa: @social_cause.puntaje_causa, rut_beneficiario: @social_cause.rut_beneficiario, rut_beneficiario_causa: @social_cause.rut_beneficiario_causa, tamano_causa: @social_cause.tamano_causa, tipo_causa: @social_cause.tipo_causa } }
    assert_redirected_to social_cause_url(@social_cause)
  end

  test "should destroy social_cause" do
    assert_difference("SocialCause.count", -1) do
      delete social_cause_url(@social_cause)
    end

    assert_redirected_to social_causes_url
  end
end
