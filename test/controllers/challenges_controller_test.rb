require "test_helper"

class ChallengesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @challenge = challenges(:one)
  end

  test "should get index" do
    get challenges_url
    assert_response :success
  end

  test "should get new" do
    get new_challenge_url
    assert_response :success
  end

  test "should create challenge" do
    assert_difference("Challenge.count") do
      post challenges_url, params: { challenge: { comentarios: @challenge.comentarios, dv_rut_person: @challenge.dv_rut_person, fecha_inicio: @challenge.fecha_inicio, fecha_termino: @challenge.fecha_termino, id_causa: @challenge.id_causa, id_desafio: @challenge.id_desafio, puntaje_causas: @challenge.puntaje_causas, rut_person: @challenge.rut_person } }
    end

    assert_redirected_to challenge_url(Challenge.last)
  end

  test "should show challenge" do
    get challenge_url(@challenge)
    assert_response :success
  end

  test "should get edit" do
    get edit_challenge_url(@challenge)
    assert_response :success
  end

  test "should update challenge" do
    patch challenge_url(@challenge), params: { challenge: { comentarios: @challenge.comentarios, dv_rut_person: @challenge.dv_rut_person, fecha_inicio: @challenge.fecha_inicio, fecha_termino: @challenge.fecha_termino, id_causa: @challenge.id_causa, id_desafio: @challenge.id_desafio, puntaje_causas: @challenge.puntaje_causas, rut_person: @challenge.rut_person } }
    assert_redirected_to challenge_url(@challenge)
  end

  test "should destroy challenge" do
    assert_difference("Challenge.count", -1) do
      delete challenge_url(@challenge)
    end

    assert_redirected_to challenges_url
  end
end
