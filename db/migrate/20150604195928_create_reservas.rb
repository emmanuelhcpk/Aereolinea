class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.integer :socio_id
      
      t.timestamps null: false
    end
  end
end
