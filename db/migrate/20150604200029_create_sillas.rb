class CreateSillas < ActiveRecord::Migration
  def change
    create_table :sillas do |t|
      t.integer :reserva_id 
      t.integer :vuelo_id 
      t.string	:num_silla

      t.timestamps null: false
    end
  end
end
