class CreateDeudaUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :deuda_users do |t|
      t.integer :rut_person
      t.string :dv_rut_person
      t.string :institucion_1
      t.string :tipo_deuda_1
      t.integer :monto_deuda_1
      t.integer :pago_mensual_1
      t.integer :meses_sin_pago_1
      t.integer :pago_mensual_total
      t.integer :monto_deuda_total

      t.timestamps
    end
  end
end
