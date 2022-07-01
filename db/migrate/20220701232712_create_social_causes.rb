class CreateSocialCauses < ActiveRecord::Migration[7.0]
  def change
    create_table :social_causes do |t|
      t.integer :id_causa
      t.integer :rut_beneficiario
      t.string :dv_rut_person
      t.string :nombre_causa
      t.text :descripcion
      t.string :fundacion_u_ong_relacionada
      t.string :asesor_asignado
      t.integer :puntaje_causa
      t.integer :rut_beneficiario_causa
      t.string :dv_rut_benef
      t.string :tipo_causa
      t.string :tamano_causa
      t.date :fecha_ingreso_causa

      t.timestamps
    end
  end
end
