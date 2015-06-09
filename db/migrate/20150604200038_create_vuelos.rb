class CreateVuelos < ActiveRecord::Migration
  def change
    create_table :vuelos do |t|

    	t.datetime :salida
    	t.datetime	:llegada
      t.string	:descripcion
      t.string	:ciudad_destino
      t.string	:ciudad_origen
      t.timestamps null: false
    end
  end
end
