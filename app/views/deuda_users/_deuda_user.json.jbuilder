json.extract! deuda_user, :id, :rut_person, :dv_rut_person, :institucion_1, :tipo_deuda_1, :monto_deuda_1, :pago_mensual_1, :meses_sin_pago_1, :pago_mensual_total, :monto_deuda_total, :created_at, :updated_at
json.url deuda_user_url(deuda_user, format: :json)
