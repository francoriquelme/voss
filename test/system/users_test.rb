require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Apellido materno", with: @user.apellido_materno
    fill_in "Apellido paterno", with: @user.apellido_paterno
    fill_in "Comuna", with: @user.comuna
    fill_in "Desafios en curso", with: @user.desafios_en_curso
    fill_in "Direccion", with: @user.direccion
    fill_in "Dv rut emp", with: @user.dv_rut_emp
    fill_in "Dv rut person", with: @user.dv_rut_person
    fill_in "Email", with: @user.email
    fill_in "Empleador", with: @user.empleador
    fill_in "Estado financiero", with: @user.estado_financiero
    fill_in "Fecha nacimiento", with: @user.fecha_nacimiento
    fill_in "Id desafio", with: @user.id_desafio
    fill_in "Name", with: @user.name
    fill_in "Profesion u oficio", with: @user.profesion_u_oficio
    fill_in "Region", with: @user.region
    fill_in "Renta mensual", with: @user.renta_mensual
    fill_in "Rut", with: @user.rut
    fill_in "Rut empleador", with: @user.rut_empleador
    fill_in "Telefono", with: @user.telefono
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Apellido materno", with: @user.apellido_materno
    fill_in "Apellido paterno", with: @user.apellido_paterno
    fill_in "Comuna", with: @user.comuna
    fill_in "Desafios en curso", with: @user.desafios_en_curso
    fill_in "Direccion", with: @user.direccion
    fill_in "Dv rut emp", with: @user.dv_rut_emp
    fill_in "Dv rut person", with: @user.dv_rut_person
    fill_in "Email", with: @user.email
    fill_in "Empleador", with: @user.empleador
    fill_in "Estado financiero", with: @user.estado_financiero
    fill_in "Fecha nacimiento", with: @user.fecha_nacimiento
    fill_in "Id desafio", with: @user.id_desafio
    fill_in "Name", with: @user.name
    fill_in "Profesion u oficio", with: @user.profesion_u_oficio
    fill_in "Region", with: @user.region
    fill_in "Renta mensual", with: @user.renta_mensual
    fill_in "Rut", with: @user.rut
    fill_in "Rut empleador", with: @user.rut_empleador
    fill_in "Telefono", with: @user.telefono
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
