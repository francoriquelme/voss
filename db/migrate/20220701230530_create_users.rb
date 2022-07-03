class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :apellido_paterno
      t.string :apellido_materno
      t.date :fecha_nacimiento
      t.string :direccion
      t.string :comuna
      t.string :region
      t.integer :telefono
      t.string :email
      t.string :profesion_u_oficio
      t.string :renta_mensual
      t.integer :rut
      t.string :dv_rut_person
      t.integer :rut_empleador
      t.string :dv_rut_emp
      t.string :empleador
      t.string :desafios_en_curso
      t.string :estado_financiero
      t.integer :id_desafio

      t.timestamps
    end
  end
end
