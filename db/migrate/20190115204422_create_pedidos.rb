class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.string :nombre
      t.string :mail
      t.integer :telefono
      t.string :descripcion
      t.string :tipo
      t.string :operacion
      t.string :region
      t.string :comuna
      t.string :direccion
      t.integer :superficie
      t.integer :dorms
      t.integer :bano
      t.integer :estacionamiento
      t.integer :anio
      t.integer :piso

      t.timestamps
    end
  end
end
