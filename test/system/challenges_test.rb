require "application_system_test_case"

class ChallengesTest < ApplicationSystemTestCase
  setup do
    @challenge = challenges(:one)
  end

  test "visiting the index" do
    visit challenges_url
    assert_selector "h1", text: "Challenges"
  end

  test "should create challenge" do
    visit challenges_url
    click_on "New challenge"

    fill_in "Comentarios", with: @challenge.comentarios
    fill_in "Dv rut person", with: @challenge.dv_rut_person
    fill_in "Fecha inicio", with: @challenge.fecha_inicio
    fill_in "Fecha termino", with: @challenge.fecha_termino
    fill_in "Id causa", with: @challenge.id_causa
    fill_in "Id desafio", with: @challenge.id_desafio
    fill_in "Puntaje causas", with: @challenge.puntaje_causas
    fill_in "Rut person", with: @challenge.rut_person
    click_on "Create Challenge"

    assert_text "Challenge was successfully created"
    click_on "Back"
  end

  test "should update Challenge" do
    visit challenge_url(@challenge)
    click_on "Edit this challenge", match: :first

    fill_in "Comentarios", with: @challenge.comentarios
    fill_in "Dv rut person", with: @challenge.dv_rut_person
    fill_in "Fecha inicio", with: @challenge.fecha_inicio
    fill_in "Fecha termino", with: @challenge.fecha_termino
    fill_in "Id causa", with: @challenge.id_causa
    fill_in "Id desafio", with: @challenge.id_desafio
    fill_in "Puntaje causas", with: @challenge.puntaje_causas
    fill_in "Rut person", with: @challenge.rut_person
    click_on "Update Challenge"

    assert_text "Challenge was successfully updated"
    click_on "Back"
  end

  test "should destroy Challenge" do
    visit challenge_url(@challenge)
    click_on "Destroy this challenge", match: :first

    assert_text "Challenge was successfully destroyed"
  end
end
