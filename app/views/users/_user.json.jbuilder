json.extract! user, :id, :name, :apellido_paterno, :apellido_materno, :fecha_nacimiento, :direccion, :comuna, :region, :telefono, :email, :profesion_u_oficio, :renta_mensual, :rut, :dv_rut_person, :rut_empleador, :dv_rut_emp, :empleador, :desafios_en_curso, :estado_financiero, :id_desafio, :created_at, :updated_at
json.url user_url(user, format: :json)
