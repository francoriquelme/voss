require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { apellido_materno: @user.apellido_materno, apellido_paterno: @user.apellido_paterno, comuna: @user.comuna, desafios_en_curso: @user.desafios_en_curso, direccion: @user.direccion, dv_rut_emp: @user.dv_rut_emp, dv_rut_person: @user.dv_rut_person, email: @user.email, empleador: @user.empleador, estado_financiero: @user.estado_financiero, fecha_nacimiento: @user.fecha_nacimiento, id_desafio: @user.id_desafio, name: @user.name, profesion_u_oficio: @user.profesion_u_oficio, region: @user.region, renta_mensual: @user.renta_mensual, rut: @user.rut, rut_empleador: @user.rut_empleador, telefono: @user.telefono } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { apellido_materno: @user.apellido_materno, apellido_paterno: @user.apellido_paterno, comuna: @user.comuna, desafios_en_curso: @user.desafios_en_curso, direccion: @user.direccion, dv_rut_emp: @user.dv_rut_emp, dv_rut_person: @user.dv_rut_person, email: @user.email, empleador: @user.empleador, estado_financiero: @user.estado_financiero, fecha_nacimiento: @user.fecha_nacimiento, id_desafio: @user.id_desafio, name: @user.name, profesion_u_oficio: @user.profesion_u_oficio, region: @user.region, renta_mensual: @user.renta_mensual, rut: @user.rut, rut_empleador: @user.rut_empleador, telefono: @user.telefono } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
