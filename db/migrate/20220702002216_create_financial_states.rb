class CreateFinancialStates < ActiveRecord::Migration[7.0]
  def change
    create_table :financial_states do |t|
      t.string :estado_financiero
      t.integer :rut_person
      t.string :dv_rut_person
      t.integer :renta_mensual
      t.integer :pago_mensual_total
      t.integer :monto_deuda_total
      t.date :fecha_actualizacion

      t.timestamps
    end
  end
end
