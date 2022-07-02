class CreateChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.integer :id_desafio
      t.integer :rut_person
      t.string :dv_rut_person
      t.integer :id_causa
      t.integer :puntaje_causas
      t.date :fecha_inicio
      t.date :fecha_termino
      t.text :comentarios

      t.timestamps
    end
  end
end
